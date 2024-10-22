// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routers.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $splashRoute,
      $loginPageRoute,
      $tabScreenShell,
    ];

RouteBase get $splashRoute => GoRouteData.$route(
      path: '/splash',
      factory: $SplashRouteExtension._fromState,
    );

extension $SplashRouteExtension on SplashRoute {
  static SplashRoute _fromState(GoRouterState state) => const SplashRoute();

  String get location => GoRouteData.$location(
        '/splash',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $loginPageRoute => GoRouteData.$route(
      path: '/login',
      factory: $LoginPageRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'sign_up',
          factory: $SignUpScreenRouteExtension._fromState,
        ),
      ],
    );

extension $LoginPageRouteExtension on LoginPageRoute {
  static LoginPageRoute _fromState(GoRouterState state) =>
      const LoginPageRoute();

  String get location => GoRouteData.$location(
        '/login',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SignUpScreenRouteExtension on SignUpScreenRoute {
  static SignUpScreenRoute _fromState(GoRouterState state) =>
      const SignUpScreenRoute();

  String get location => GoRouteData.$location(
        '/login/sign_up',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $tabScreenShell => ShellRouteData.$route(
      navigatorKey: TabScreenShell.$navigatorKey,
      factory: $TabScreenShellExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: '/home',
          factory: $HomeScreenRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: '/record',
          factory: $RecordScreenRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: '/my_info',
          factory: $MyInfoPageRouteExtension._fromState,
        ),
      ],
    );

extension $TabScreenShellExtension on TabScreenShell {
  static TabScreenShell _fromState(GoRouterState state) =>
      const TabScreenShell();
}

extension $HomeScreenRouteExtension on HomeScreenRoute {
  static HomeScreenRoute _fromState(GoRouterState state) =>
      const HomeScreenRoute();

  String get location => GoRouteData.$location(
        '/home',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $RecordScreenRouteExtension on RecordScreenRoute {
  static RecordScreenRoute _fromState(GoRouterState state) =>
      const RecordScreenRoute();

  String get location => GoRouteData.$location(
        '/record',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $MyInfoPageRouteExtension on MyInfoPageRoute {
  static MyInfoPageRoute _fromState(GoRouterState state) =>
      const MyInfoPageRoute();

  String get location => GoRouteData.$location(
        '/my_info',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
