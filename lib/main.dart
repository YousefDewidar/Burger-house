import 'package:burger_house/core/utils/all_views_page_view.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const BurgerHouseApp());
}

class BurgerHouseApp extends StatelessWidget {
  const BurgerHouseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AllViewsPageView(),
    );
  }
}

