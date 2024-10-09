import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HelperFun {
  void handleAuthErrors(FirebaseAuthException e, BuildContext context) {
    if (e.code == 'wrong-password') {
      showAwesomeDialog(context, 'Wrong password');
    } else if (e.code == 'invalid-email') {
      showAwesomeDialog(context, 'Invalid email');
    } else if (e.code == 'weak-password') {
      showAwesomeDialog(context, 'Weak password');
    } else if (e.code == 'email-already-in-use') {
      showAwesomeDialog(context, 'email already in us');
    } else {
      showAwesomeDialog(context, 'Your email or password is wrong');
    }
  }

  showAwesomeDialog(
    BuildContext context,
    String message,
  ) {
    Dialog(
      child: Text(message),
    ).createElement();
  }
}
