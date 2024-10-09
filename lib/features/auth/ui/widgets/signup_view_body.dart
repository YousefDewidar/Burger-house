import 'package:burger_house/features/auth/ui/widgets/create_acc_form.dart';
import 'package:flutter/material.dart';

class SignupViewBody extends StatelessWidget {
  const SignupViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 12,
          ),
          // Welcome
          const Text(
            'Welcome,',
            style: TextStyle(fontSize: 40),
          ),
    
          Text(
            'House Of Burger',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
    
          const SizedBox(
            height: 18,
          ),
    
          const CreateAccForm()
        ],
      ),
    );
  }
}
