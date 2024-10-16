import 'package:burger_house/core/utils/widgets/space.dart';
import 'package:burger_house/features/menu/ui/widgets/category_list_view.dart';
import 'package:burger_house/features/menu/ui/widgets/products_list_view.dart';
import 'package:flutter/material.dart';

class MenuView extends StatelessWidget {
  const MenuView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          const SpaceV(50),
          Text(
            'Menu Sections'.toUpperCase(),
            style: const TextStyle(
              color: Colors.black,
              fontSize: 25,
              fontWeight: FontWeight.w600,
            ),
          ),
          const CategoryListView(),
          Text(
            'Beef Burger'.toUpperCase(),
            style: const TextStyle(
              color: Colors.black,
              fontSize: 25,
              fontWeight: FontWeight.w600,
            ),
          ),
          const ProductsListView(),
        ],
      ),
    );
  }
}
