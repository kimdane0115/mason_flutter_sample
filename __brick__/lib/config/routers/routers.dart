import '../../index.dart';
import '../../feature/2.home/presentation/pages/home_screen.dart';
import '../../feature/2.home/presentation/pages/home_screen2.dart';
import '../../feature/2.home/presentation/pages/home_screen3.dart';
import '../../feature/2.home/presentation/pages/tab_screen.dart';
import '../../feature/3.record/presentation/pages/record_screen.dart';
import '../../feature/4.my_info/presentation/pages/my_info_page.dart';
import '../../splash_screen.dart';
import 'router.dart';

part 'routers.g.dart';

class Routers {
  static const String root = '/';
  static const String splash = '/splash';
  static const String login = '/login';
  static const String home = '/home';
  static const String home2 = '/home2';
  static const String home3 = '/home3';

  static const String record = '/record';
  static const String myInfo = '/my_info';

  // 2 depth routes
  static const String signUp = 'sign_up';
  static const String signUpAgreement = 'sign_up_agreement';
}

// @TypedGoRoute<RootRoute>(
//   path: Routers.root,
// )
// class RootRoute extends GoRouteData {
//   const RootRoute();
//   @override
//   Page<void> buildPage(BuildContext context, GoRouterState state) {
//     return const MaterialPage(child: SplashScreen());
//   }
// }

@TypedGoRoute<SplashRoute>(
  path: Routers.splash,
)
class SplashRoute extends GoRouteData {
  const SplashRoute();
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return const MaterialPage(child: SplashScreen());
  }
}

@TypedGoRoute<LoginPageRoute>(
  path: Routers.login,
  routes: [
    TypedGoRoute<SignUpScreenRoute>(
      path: Routers.signUp,
    ),
  TypedGoRoute<SignUpAgreementScreenRoute>(
      path: Routers.signUpAgreement,
    ),
  ]
)
class LoginPageRoute extends GoRouteData {
  const LoginPageRoute();
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return const MaterialPage(child: LoginPage());
  }
}

class SignUpScreenRoute extends GoRouteData {
  const SignUpScreenRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return const MaterialPage(child: SignUpScreen());
  }
}

class SignUpAgreementScreenRoute extends GoRouteData {
  const SignUpAgreementScreenRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return const MaterialPage(child: SignUpAgreementScreen());
  }
}

@TypedShellRoute<TabScreenShell>(
  routes: <TypedRoute<RouteData>>[
    TypedGoRoute<HomeScreenRoute>(
      path: Routers.home,
    ),
    TypedGoRoute<HomeScreenRoute2>(
      path: Routers.home2,
    ),
    // TypedGoRoute<HomeScreenRoute3>(
    //   path: Routers.home3,
    // ),
    // TypedGoRoute<RecordScreenRoute>(
    //   path: Routers.record,
    // ),
    TypedGoRoute<MyInfoPageRoute>(
      path: Routers.myInfo,
    ),
  ]
)
class TabScreenShell extends ShellRouteData {
  const TabScreenShell();
  static final GlobalKey<NavigatorState> $navigatorKey = shellNavigatorKey;
  @override
  Page<void> pageBuilder(BuildContext context, GoRouterState state, Widget navigator) {
    return MaterialPage(
      key: state.pageKey,
      child: TabScreen(child: navigator),
      name: 'tab_screen',
    );
  }
}

class HomeScreenRoute extends GoRouteData {
  const HomeScreenRoute();
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return const MaterialPage(
      child: HomeScreen(),
      name: Routers.home,
    );
  }
}

class HomeScreenRoute2 extends GoRouteData {
  const HomeScreenRoute2();
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return const MaterialPage(
      child: HomeScreen2(),
      name: Routers.home2,
    );
  }
}

class HomeScreenRoute3 extends GoRouteData {
  const HomeScreenRoute3();
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return const MaterialPage(
      child: HomeScreen3(),
      name: Routers.home3,
    );
  }
}

class RecordScreenRoute extends GoRouteData {
  const RecordScreenRoute();
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return const MaterialPage(
      child: RecordScreen(),
      name: Routers.record,
    );
  }
}

class MyInfoPageRoute extends GoRouteData {
  const MyInfoPageRoute();
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return const MaterialPage(
      child: MyInfoPage(),
      name: Routers.myInfo,
    );
  }
}