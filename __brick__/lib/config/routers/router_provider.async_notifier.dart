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

        final isSplash = goState.uri.toString() == const SplashRoute().location;
        if (isSplash) {
          return const LoginPageRoute().location;
        }

        // kakao${app_key}://kakaolink과 같은  Custom URL Scheme도 있으므로 uri.authority까지 체크 필요
        if (goState.uri.scheme.contains('fluttersample.co.kr') && goState.uri.authority == 'oauth') {
          return const SplashRoute().location;
        }

        if (goState.uri.toString() == const LoginPageRoute().location) {
          final authState = ref.watch(authStreamProvider);
          final uuid = ref.read(localRepositoryProvider).getUUID();
          bool loggedIn = authState.value?.session?.user != null;

          if (authState.value?.session?.isExpired ?? false) {
            AuthResponse result = await Supabase.instance.client.auth.refreshSession();
            result.session?.user != null ? loggedIn = true : loggedIn = false;
          }

          // Auto Login
          if (loggedIn) {
            if (uuid == authState.value?.session?.user.id.toString()) {
              return const HomeScreenRoute().location;
            }
          } else {
            return const LoginPageRoute().location;
          }
        }

        return null;
      },
    );
  },
  name: 'routerProvider',
);