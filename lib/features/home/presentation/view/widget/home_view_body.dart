import 'package:burger_house/core/utils/styles.dart';
import 'package:burger_house/features/auth/search_text_field.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Menu', style: Styles.style24.copyWith(fontSize: 42)),
        const SearchTextField(),
      ],
    );
  }
}
