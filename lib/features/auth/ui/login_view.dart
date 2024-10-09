import 'package:burger_house/core/utils/helper/constant.dart';
import 'package:burger_house/core/utils/widgets/widget_with_background.dart';
import 'package:burger_house/features/auth/ui/widgets/login_form.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WidgetWithBackground(
        widget: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/icon_ff.png',
                color: Constant.kPrimaryColor,
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
        ),
      ),
    );
  }
}
