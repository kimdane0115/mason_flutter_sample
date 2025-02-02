import '../../index.dart';

final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');
final GlobalKey<NavigatorState> shellNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'shell');

final routerProvider = Provider<GoRouter>(
  (ref) {
    ref.listen(
      // supaBaseAuthAsyncNotifierProvider,
      authStreamProvider,
      (previous, next) async {
        if (next.isLoading || next.hasError) {
          return;
        }
        final context = rootNavigatorKey.currentContext;
        if (context != null) {
          // GoRouter.maybeOf(context)?.refresh();
          // final res = await checkUser(next.value?.session?.user.id.toString() ?? '');

          // if (context.mounted) {
          //   if (res) {
          //     const HomeScreenRoute().push(context);
          //   } else {
          //     const SignUpScreenRoute().push(context);
          //   }
          // }
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

        final authState = ref.watch(authStreamProvider);
        bool loggedIn = authState.value?.session?.user != null;

        if (authState.value?.session?.isExpired ?? false) {
          AuthResponse result = await Supabase.instance.client.auth.refreshSession();
          result.session?.user != null ? loggedIn = true : loggedIn = false;
        }

        final isSplash = goState.uri.toString() == const SplashRoute().location;
        if (isSplash) {
          if (loggedIn) {
            final res = await checkUser(authState.value?.session?.user.id.toString() ?? '');
            if (res) {
              return const HomeScreenRoute().location;
            } else {
              return const LoginPageRoute().location;
            }
          }
        }
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