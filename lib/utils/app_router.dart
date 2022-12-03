import 'package:flutter/material.dart';
import 'package:food_app/ui/pages/login_page.dart';
import 'package:food_app/ui/pages/pages.dart';

import '../ui/pages/signup_page.dart';

abstract class AppRoutes {
  static const String examplePage = "example_page";
  static const String mainPage = "main_page";
  static const String loginPage = "login_page";
  static const String signupPage = "signup_page";
}

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    Widget screen;
    switch (settings.name) {
      case AppRoutes.examplePage:
        final argsExample = args as String;
        screen = ExamplePage(argsExample: argsExample);
        break;
      case AppRoutes.loginPage:
        screen = const LoginPage();
        break;
      case AppRoutes.signupPage:
        screen = const SignupPage();
        break;
      case AppRoutes.mainPage:
        screen = const MainPage();
        break;
      default:
        screen = const MainPage();
        break;
    }
    return MaterialPageRoute(builder: (_) => screen);
  }
}
