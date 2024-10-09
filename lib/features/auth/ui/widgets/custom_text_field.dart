import 'package:burger_house/core/utils/constant.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final IconData icon;
  final TextEditingController controller;

  const CustomTextField({
    super.key,
    required this.label,
    required this.icon,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: (value) {
        return handleValidation(value);
      },
      decoration: customInputDecoration(),
    );
  }

  InputDecoration customInputDecoration() {
    return InputDecoration(
        prefixIcon: Icon(
          icon,
          color: Constant.kPrimaryColor,
        ),
        contentPadding: const EdgeInsets.all(17),
        labelText: label,
        floatingLabelStyle: const TextStyle(fontSize: 18, color: Constant.kPrimaryColor),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Constant.kPrimaryColor)),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)));
  }

  String? handleValidation(String? value) {
    if (value!.isEmpty && label == 'Email') {
      return 'Please enter your email';
    } else if (value.isEmpty && label == 'Name') {
      return 'Please enter your Name';
    } else {
      return null;
    }
  }
}
