import 'package:burger_house/features/auth/presentation/view/forget_pass_view.dart';
import 'package:burger_house/features/auth/presentation/view/login_view.dart';
import 'package:burger_house/features/auth/presentation/view/signup_view.dart';
import 'package:burger_house/features/home/presentation/view/home_view.dart';
import 'package:burger_house/features/splash/presentation/view/splash_view.dart';
import 'package:burger_house/firebase_options.dart';
import 'package:device_preview/device_preview.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() async {
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(DevicePreview(builder: (context) => const BurgerHouseApp()));
}

class BurgerHouseApp extends StatelessWidget {
  const BurgerHouseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
        debugShowCheckedModeBanner: false, home: SplashView());
  }
}
