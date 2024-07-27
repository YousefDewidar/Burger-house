import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HelperFun {
  void handleAuthErrors(FirebaseAuthException e, BuildContext context) {
    if (e.code == 'wrong-password') {
      showAwesomeDialog(context, 'Wrong password', type: DialogType.error);
    } else if (e.code == 'invalid-email') {
      showAwesomeDialog(context, 'Invalid email', type: DialogType.error);
    } else if (e.code == 'weak-password') {
      showAwesomeDialog(context, 'Weak password', type: DialogType.error);
    } else if (e.code == 'email-already-in-use') {
      showAwesomeDialog(context, 'email already in use', type: DialogType.info);
    } else {
      showAwesomeDialog(context, 'Your email or password is wrong',
          type: DialogType.error);
    }
  }

  showAwesomeDialog(BuildContext context, String message,
      {required DialogType type}) {
    AwesomeDialog(
            context: context,
            dialogType: type,
            animType: AnimType.rightSlide,
            title: message,
            padding: const EdgeInsets.all(10),
            autoDismiss: true,
            autoHide: const Duration(seconds: 2))
        .show();
  }
}
