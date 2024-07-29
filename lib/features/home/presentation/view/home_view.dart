import 'package:burger_house/core/utils/constant.dart';
import 'package:burger_house/features/home/presentation/view/widget/custom_bottom_bar.dart';
import 'package:burger_house/features/home/presentation/view/widget/hello_row.dart';
import 'package:burger_house/features/home/presentation/view/widget/home_view_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        top: false,
        minimum: EdgeInsets.only(top: 30),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            children: [
              HelloRow(),
              HomeViewBody(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomBar(),
    );
  }
}
