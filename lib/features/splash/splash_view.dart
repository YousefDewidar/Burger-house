import 'package:burger_house/core/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:burger_house/core/utils/widgets/all_views_page_view.dart';
import 'package:burger_house/features/auth/ui/login_view.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:page_transition/page_transition.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView>
    with SingleTickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    animation = Tween<double>(begin: 0, end: 1).animate(animationController);
    animationController.forward();

    Future.delayed(const Duration(seconds: 2), () {
      Navigator.push(
        context,
        PageTransition(
          type: PageTransitionType.rightToLeft,
          child: getPageDueToUser(),
        ),
      );
    });
  }

  StreamBuilder<User?> getPageDueToUser() {
    return StreamBuilder(
      stream: FirebaseAuth.instance.userChanges(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return const AllViewsPageView();
        } else {
          return const LoginView();
        }
      },
    );
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constant.kPrimaryColor,
      body: Center(
        child: FadeTransition(
          opacity: animation,
          child: Image.asset(
            'assets/images/icon_ff.png',
            color: Colors.white,
            scale: 4.5,
          ),
        ),
      ),
    );
  }
}
