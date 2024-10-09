import 'package:burger_house/core/utils/constant.dart';
import 'package:burger_house/core/helper/functions.dart';
import 'package:burger_house/core/utils/widgets/password_field.dart';
import 'package:burger_house/features/auth/ui/forget_pass_view.dart';
import 'package:burger_house/features/auth/ui/signup_view.dart';
import 'package:burger_house/features/auth/ui/widgets/custom_button.dart';
import 'package:burger_house/features/auth/ui/widgets/custom_text_field.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  final TextEditingController emailCon = TextEditingController();
  final TextEditingController passwordCon = TextEditingController();
  FirebaseAuth auth = FirebaseAuth.instance;
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Form(
        key: formKey,
        autovalidateMode: autovalidateMode,
        child: Column(
          children: [
            // email
            CustomTextField(
              label: 'Email',
              icon: Icons.email_outlined,
              controller: emailCon,
            ),

            const SizedBox(
              height: 15,
            ),
            // password
            PasswordField(controller: passwordCon),

            // forget pass
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.rightToLeft,
                        child: const ForgetPassView(),
                      ),
                    );
                  },
                  child: Text(
                    'Forget password?',
                    textAlign: TextAlign.end,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
              ],
            ),

            const SizedBox(
              height: 10,
            ),

            // login
            isLoading
                ? const SizedBox(height: 30, child: CircularProgressIndicator())
                : CustomButton(
                    onPressed: () async {
                      await loginLogic(context);
                    },
                    text: 'login',
                    color: Constant.kPrimaryColor,
                  ),
            const SizedBox(
              height: 15,
            ),
            // create acc
            CustomButton(
              text: 'Create Account',
              onPressed: () {
                Navigator.push(
                  context,
                  PageTransition(
                    type: PageTransitionType.rightToLeft,
                    child: const SignupView(),
                  ),
                );
              },
              color: Theme.of(context).colorScheme.onSecondary,
            ),
          ],
        ));
  }

  Future<void> loginLogic(BuildContext context) async {
    if (formKey.currentState!.validate()) {
      try {
        isLoading = true;
        setState(() {});
        await signInMethod();
        setState(() {});
      } on FirebaseAuthException catch (e) {
        HelperFun().handleAuthErrors(e, context);
      }
      isLoading = false;
      setState(() {});
    } else {
      autovalidateMode = AutovalidateMode.always;
      setState(() {});
    }
  }

  Future<UserCredential> signInMethod() {
    return auth.signInWithEmailAndPassword(
        email: emailCon.text, password: passwordCon.text);
  }
}
