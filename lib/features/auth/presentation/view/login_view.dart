import 'package:burger_house/features/auth/presentation/view/widgets/login_view_body.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Positioned(
          top: 0,
          bottom: 0,
          left: 0,
          right: 0,
          child: Opacity(
            opacity: 0.1,
            child: Image.asset(
              'assets/images/foods.png',
              fit: BoxFit.fill,
            ),
          ),
        ),
        Positioned(
            height: MediaQuery.of(context).size.height ,
            width: MediaQuery.of(context).size.width,
            child: const LoginViewBody()),
      ]),
    );
  }
}
