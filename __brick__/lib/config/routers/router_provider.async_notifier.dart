import '../../index.dart';

final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');
final GlobalKey<NavigatorState> shellNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'shell');

final routerProvider = Provider<GoRouter>(
  (ref) {
    ref.listen(
      // supaBaseAuthAsyncNotifierProvider,
      authStreamProvider,
      (previous, next) {
        if (next.isLoading || next.hasError) {
          return;
        }
        final context = rootNavigatorKey.currentContext;
        if (context != null) {
          // GoRouter.maybeOf(context)?.refresh();
        }
      },
    );

    return GoRouter(
      navigatorKey: rootNavigatorKey,
      debugLogDiagnostics: true,
      // initialLocation: const LoginPageRoute().location,
      initialLocation: const SplashRoute().location,
      routes: $appRoutes,
      // errorPageBuilder: (_, state) {
      //   return MaterialPage(
      //     key: state.pageKey,
      //     child: CustomErrorScreen(
      //       error: state.error,
      //     ),
      //   );
      // },
      redirect: (BuildContext context, GoRouterState goState) async {

        if( goState.uri.toString() == const SplashRoute().location ) {
          return const LoginPageRoute().location;
        }

        if( goState.uri.toString() != const LoginPageRoute().location) {
          return null;
        }

        final authState = ref.watch(authStreamProvider);

        bool loggedIn = authState.value?.session?.user != null;

        // TODO: 현재 기기에 로그인 되어져 있는 상태에서 다른 기기에서 회원 탈퇴 후 다시 현재 기기로 앱을 실행 시켰을 때
        // 세션 만료 되어 있는 상태라면 세션을 갱신하거나 로그아웃 처리 해야함.
        if (authState.value?.session?.isExpired ?? false) {
          AuthResponse result = await Supabase.instance.client.auth.refreshSession();
          result.session?.user != null ? loggedIn = true : loggedIn = false;
        }

        if (loggedIn) {
          return const HomeScreenRoute().location;
        }
        // final auth = ref.read(authAsyncNotifierProvider);
        // if (auth.isLoading || auth.hasError) return null;

        // print('>>>>> auth : ${auth.value}');
        // if (auth.value!.isNotEmpty) {
        //   return const HomeScreenRoute3().location;
        // }
        return null;
      },
    );
  },
  name: 'routerProvider',
);

Future<bool> checkUser(String userId) async {
  try {
    final response = await Supabase.instance.client
        .rpc('check_user', params: {'user_id': userId});
    return response as bool;
  } catch (e) {
    throw Exception('사용자 확인 중 오류가 발생했습니다: $e');
  }
}