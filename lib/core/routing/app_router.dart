import 'package:appointment/features/face/ui/face_screen.dart';
import 'package:appointment/features/forgot_password/ui/forgot_password_screen.dart';
import 'package:appointment/features/home/data/repostoey/home_repo.dart';
import 'package:appointment/features/home/logic/home_cubit.dart';
import 'package:appointment/features/otp/ui/otp_screen.dart';
import 'package:appointment/features/sign_up/ui/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/home/ui/home_screen.dart';
import '../../features/login/logic/cubit/login_cubit.dart';
import '../../features/login/ui/login_screen.dart';
import '../../features/onboarding/onboarding_screen.dart';
import '../../features/sign_up/logic/cubit/sgin_up_cubit.dart';
import '../di/dependency_injection.dart';
import 'routes.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    // this argumentsto be passed in any screen like this (arguments as Class Name)
    final arguments = settings.arguments;
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OnBoardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
              create: (context) => getIt<LoginCubit>(),
              child: const LoginScreen()),
        );
      case Routes.signUpScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
              create: (context) => getIt<SginUpCubit>(),
              child: const SignupScreen()),
        );
      case Routes.forgotPasswordScreen:
        return MaterialPageRoute(builder: (_) => const ForgotPasswordScreen());
      case Routes.otpScreen:
        return MaterialPageRoute(builder: (_) => const OtpScreen());
      case Routes.faceScreen:
        return MaterialPageRoute(builder: (_) => const FaceScreen());
      case Routes.homeScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => HomeCubit(getIt())..getSpecializations(),
                  child: const HomeScreen(),
                ));
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
