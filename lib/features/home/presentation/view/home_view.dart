import 'package:burger_house/features/home/presentation/view/widget/home_view_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffF5F5F5),
      body: SafeArea(
        top: false,
        minimum: EdgeInsets.only(top: 30),
        child: HomeViewBody(),
      ),
    );
  }
}
