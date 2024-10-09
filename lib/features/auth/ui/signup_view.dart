import 'package:burger_house/core/utils/widgets/widget_with_background.dart';
import 'package:burger_house/features/auth/ui/widgets/signup_view_body.dart';
import 'package:flutter/material.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: WidgetWithBackground(
        widget: SignupViewBody(),
        havBack: true,
      ),
    );
  }
}
