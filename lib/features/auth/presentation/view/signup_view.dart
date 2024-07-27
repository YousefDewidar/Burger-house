import 'package:burger_house/features/auth/presentation/view/widgets/signup_view_body.dart';
import 'package:flutter/material.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
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
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              top: MediaQuery.of(context).size.height * 0.22,
              child: const SignupViewBody()),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.08,
            right: 5,
            height: 50,
            width: 50,
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.logout_outlined),
            ),
          ),
        ],
      ),
    );
  }
}
