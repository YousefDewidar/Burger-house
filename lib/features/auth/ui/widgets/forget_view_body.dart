import 'package:burger_house/core/utils/constant.dart';
import 'package:burger_house/core/utils/helper/functions.dart';
import 'package:burger_house/core/utils/widgets/space.dart';
import 'package:burger_house/features/auth/ui/widgets/custom_button.dart';
import 'package:burger_house/features/auth/ui/widgets/custom_text_field.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ForgetViewBody extends StatefulWidget {
  const ForgetViewBody({super.key});

  @override
  State<ForgetViewBody> createState() => _ForgetViewBodyState();
}

class _ForgetViewBodyState extends State<ForgetViewBody> {
  final TextEditingController emailCon = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SpaceV(20),
          const Text(
            'Reset password,',
            style: TextStyle(fontSize: 36),
          ),
          const SpaceV(18),
          const Text(
            'Please enter your email',
            style: TextStyle(fontSize: 16),
          ),
          const SpaceV(10),
          CustomTextField(
            label: 'Email',
            icon: Icons.email,
            controller: emailCon,
          ),
          const SpaceV(20),
          CustomButton(
            text: 'Send email',
            onPressed: () async {
              await resetPassword(context);
            },
            color: kPrimaryColor,
          )
        ],
      ),
    );
  }

  Future<void> resetPassword(BuildContext context) async {
    try {
      await FirebaseAuth.instance.sendPasswordResetEmail(email: emailCon.text);
      HelperFun().showAwesomeDialog(context, 'Email sent check your mail',
          );
    } catch (e) {
      HelperFun()
          .showAwesomeDialog(context, 'Invalid Email');
    }
  }
}
