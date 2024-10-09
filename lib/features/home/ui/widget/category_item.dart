import 'package:burger_house/core/utils/widgets/space.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 18),
      child: Column(
        children: [
          Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 234, 232, 232),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Image.asset('assets/images/burger_sandwich 1.png'),
          ),
          const SpaceV(4),
          const Text('Burger',
              style: TextStyle(color: Colors.grey, fontSize: 17))
        ],
      ),
    );
  }
}