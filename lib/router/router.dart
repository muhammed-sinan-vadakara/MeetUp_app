import 'package:go_router/go_router.dart';
import 'package:meetup_app/view/home_page.dart';
import 'package:meetup_app/view/login_page.dart';
import 'package:meetup_app/view/signup_page.dart';
import 'package:meetup_app/widgets/auth_switcher.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router.g.dart';

final router = GoRouter(
  initialLocation: AuthSwitcher.routePath,
  routes: [
    GoRoute(
      path: AuthSwitcher.routePath,
      builder: (context, state) => const AuthSwitcher(),
    ),
    GoRoute(
      path: HomePage.routePath,
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: LoginPage.routePath,
      builder: (context, state) => const LoginPage(),
    ),
    GoRoute(
      path: SignupPage.routePath,
      builder: (context, state) => const SignupPage(),
    ),
  ],
);

@riverpod
GoRouter goRouter(GoRouterRef ref) {
  return router;
}
