import 'package:burger_house/core/utils/styles.dart';
import 'package:burger_house/features/auth/search_text_field.dart';
import 'package:burger_house/features/home/presentation/view/widget/category_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Menu', style: Styles.style24.copyWith(fontSize: 42)),
          const SearchTextField(),
          const CategoryListView(),
          const Text('Promotions', style: Styles.style24),
        ],
      ),
    );
  }
}

