import 'dart:async';
import 'package:appointment/core/helpers/extensions.dart';
import 'package:flutter/material.dart';

import '../../core/routing/routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 1),
      () {
        context.pushNamed(Routes.onBoardingScreen);
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset('assets/images/splash.png'),
    );
  }
}
