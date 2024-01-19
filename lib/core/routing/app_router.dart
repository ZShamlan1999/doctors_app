import '../di/dependency_injection.dart';
import 'routes.dart';
import '../../features/home/ui/home_screen.dart';
import '../../features/login/logic/cubit/login_cubit.dart';
import '../../features/onboarding/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/login/ui/login_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    // this argumentsto be passed in any screen like this (arguments as Class Name)
    final arguments = settings.arguments;
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => const OnBoardingScreen(),
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
              create: (context) => getIt<LoginCubit>(),
              child: const LoginScreen()),
        );
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
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
