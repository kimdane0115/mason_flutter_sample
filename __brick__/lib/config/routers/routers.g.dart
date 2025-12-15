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
      factory: $SplashRoute._fromState,
    );

mixin $SplashRoute on GoRouteData {
  static SplashRoute _fromState(GoRouterState state) => const SplashRoute();

  @override
  String get location => GoRouteData.$location(
        '/splash',
      );

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $loginPageRoute => GoRouteData.$route(
      path: '/login',
      factory: $LoginPageRoute._fromState,
      routes: [
        GoRouteData.$route(
          path: 'sign_up',
          factory: $SignUpScreenRoute._fromState,
        ),
        GoRouteData.$route(
          path: 'sign_up_agreement',
          factory: $SignUpAgreementScreenRoute._fromState,
        ),
      ],
    );

mixin $LoginPageRoute on GoRouteData {
  static LoginPageRoute _fromState(GoRouterState state) =>
      const LoginPageRoute();

  @override
  String get location => GoRouteData.$location(
        '/login',
      );

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $SignUpScreenRoute on GoRouteData {
  static SignUpScreenRoute _fromState(GoRouterState state) =>
      const SignUpScreenRoute();

  @override
  String get location => GoRouteData.$location(
        '/login/sign_up',
      );

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $SignUpAgreementScreenRoute on GoRouteData {
  static SignUpAgreementScreenRoute _fromState(GoRouterState state) =>
      const SignUpAgreementScreenRoute();

  @override
  String get location => GoRouteData.$location(
        '/login/sign_up_agreement',
      );

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $tabScreenShell => ShellRouteData.$route(
      navigatorKey: TabScreenShell.$navigatorKey,
      factory: $TabScreenShellExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: '/home',
          factory: $HomeScreenRoute._fromState,
        ),
        GoRouteData.$route(
          path: '/home2',
          factory: $HomeScreenRoute2._fromState,
        ),
        GoRouteData.$route(
          path: '/my_info',
          factory: $MyInfoPageRoute._fromState,
        ),
      ],
    );

extension $TabScreenShellExtension on TabScreenShell {
  static TabScreenShell _fromState(GoRouterState state) =>
      const TabScreenShell();
}

mixin $HomeScreenRoute on GoRouteData {
  static HomeScreenRoute _fromState(GoRouterState state) =>
      const HomeScreenRoute();

  @override
  String get location => GoRouteData.$location(
        '/home',
      );

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $HomeScreenRoute2 on GoRouteData {
  static HomeScreenRoute2 _fromState(GoRouterState state) =>
      const HomeScreenRoute2();

  @override
  String get location => GoRouteData.$location(
        '/home2',
      );

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $MyInfoPageRoute on GoRouteData {
  static MyInfoPageRoute _fromState(GoRouterState state) =>
      const MyInfoPageRoute();

  @override
  String get location => GoRouteData.$location(
        '/my_info',
      );

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}
