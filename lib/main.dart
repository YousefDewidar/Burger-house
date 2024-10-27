import 'package:burger_house/core/utils/constant.dart';
import 'package:burger_house/core/utils/widgets/all_views_page_view.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

// هعمل cubit ل details و هعمل buutom جديد للصفحه دي و ui ازود counter , شوية اضافات

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const BurgerHouseApp());
}

class BurgerHouseApp extends StatelessWidget {
  const BurgerHouseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Constant.kBackgroundColor,fontFamily: 'Cairo'),
      debugShowCheckedModeBanner: false,
      home: const AllViewsPageView(),
    );
  }
}
