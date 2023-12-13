import 'package:appointment/core/routing/routes.dart';
import 'package:appointment/features/onboarding/onboarding_screen.dart';
import 'package:appointment/features/splash/splash_screen.dart';
import 'package:flutter/material.dart';

import '../../features/login/login_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {

  // this argumentsto be passed in any screen like this (arguments as Class Name)
    final arguments = settings.arguments;
    switch (settings.name) {
      case Routes.splashScreen:
        return MaterialPageRoute(
          builder: (_) => const SplashScreen(),
        );
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => const OnBoardingScreen(),
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
              body: Center(
            child: Text('No route defined for ${settings.name}'),
          )),
        );
    }
  }
}
