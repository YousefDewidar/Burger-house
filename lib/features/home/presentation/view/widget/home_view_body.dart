import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(onPressed: () {
        FirebaseAuth.instance.signOut();
      }, child: const Text('Click'), ),
    );
  }
}
