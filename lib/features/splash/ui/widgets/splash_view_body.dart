import 'package:burger_house/core/utils/all_views_page_view.dart';
import 'package:burger_house/features/auth/ui/login_view.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
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
      Get.off(
        () => getPageDueToUser(),
        transition: Transition.fade,
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
    return Center(
      child: FadeTransition(
        opacity: animation,
        child: Image.asset(
          'assets/images/icon_ff.png',
          color: Colors.white,
          scale: 4.5,
        ),
      ),
    );
  }
}
