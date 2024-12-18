import 'package:burger_house/core/firebase/database.dart';
import 'package:burger_house/core/utils/constant.dart';
import 'package:burger_house/core/helper/functions.dart';
import 'package:burger_house/core/utils/widgets/password_field.dart';
import 'package:burger_house/features/auth/ui/widgets/custom_button.dart';
import 'package:burger_house/features/auth/ui/widgets/custom_text_field.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class CreateAccForm extends StatefulWidget {
  const CreateAccForm({super.key});

  @override
  State<CreateAccForm> createState() => _CreateAccFormState();
}

class _CreateAccFormState extends State<CreateAccForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  final TextEditingController emailCon = TextEditingController();
  final TextEditingController passwordCon = TextEditingController();
  final TextEditingController nameCon = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
        key: formKey,
        autovalidateMode: autovalidateMode,
        child: Column(
          children: [
            CustomTextField(
              label: 'Name',
              icon: Icons.person,
              controller: nameCon,
            ),

            const SizedBox(
              height: 15,
            ),
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
            PasswordField(
              controller: passwordCon,
            ),

            const SizedBox(
              height: 40,
            ),
            CustomButton(
              onPressed: () async {
                await registerLogic(context);
              },
              text: 'Register',
              color: Constant.kPrimaryColor,
            ),
          ],
        ));
  }

  Future<void> registerLogic(BuildContext context) async {
    if (formKey.currentState!.validate()) {
      try {
        await register(emailCon, passwordCon);
        HelperFun().showAwesomeDialog(context, 'CreatedDone');
        Database.addUser(
          email: emailCon.text,
          name: nameCon.text,
          // بعدين هخلي المسخدم يدخل موقعه ورقمه
          location: 'Fixed location',
          number: 'number',
        );
        Navigator.pop(context);
      } on FirebaseAuthException catch (e) {
        HelperFun().handleAuthErrors(e, context);
      }
    } else {
      autovalidateMode = AutovalidateMode.always;
      setState(() {});
    }
  }

  Future<void> register(emailCon, passwordCon) async {
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailCon.text, password: passwordCon.text);
  }
}
