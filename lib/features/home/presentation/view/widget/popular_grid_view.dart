import 'package:burger_house/features/home/presentation/view/widget/pouplar_card.dart';
import 'package:flutter/material.dart';

class PopularGridView extends StatelessWidget {
  const PopularGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      itemCount: 6,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 214,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2),
      itemBuilder: (context, index) {
        return const PopularCard();
      },
    );
  }
}
