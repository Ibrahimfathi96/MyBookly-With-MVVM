
import 'package:flutter/material.dart';
import 'Widgets/splash_view_body.dart';

class SplashView extends StatelessWidget {
  static const String routeName = '/';
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SplashViewBody() ,
    );
  }
}