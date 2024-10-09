import 'package:burger_house/core/utils/constant.dart';
import 'package:burger_house/features/auth/ui/widgets/login_form.dart';
import 'package:flutter/material.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/images/icon_ff.png',
            color: kPrimaryColor,
            scale: 5,
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            'Welcome Back,',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          Text(
            'Burger House family welcomes you',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(
            height: 15,
          ),
          const LoginForm(),
        ],
      ),
    );
  }
}
