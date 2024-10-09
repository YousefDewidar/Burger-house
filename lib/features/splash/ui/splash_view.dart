import 'package:burger_house/core/utils/helper/constant.dart';
import 'package:burger_house/features/splash/ui/widgets/splash_view_body.dart';
import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      backgroundColor: Constant.kPrimaryColor,
      body: SplashViewBody());
  }
}
