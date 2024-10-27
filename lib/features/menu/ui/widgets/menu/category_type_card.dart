import 'package:auto_size_text/auto_size_text.dart';
import 'package:burger_house/core/utils/constant.dart';
import 'package:flutter/material.dart';

class CategoryTypeCard extends StatelessWidget {
  final String categoryName;
  final bool selected;

  const CategoryTypeCard({
    super.key,
    required this.categoryName,
    required this.selected,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: Container(
        padding: const EdgeInsets.all(3),
        height: 70,
        width: 70,
        decoration: BoxDecoration(
          color: selected
              ? Constant.kPrimaryColor.withOpacity(.9)
              : const Color.fromARGB(255, 234, 232, 232),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: AutoSizeText(
            categoryName.toUpperCase(),
            maxLines: 3,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: selected
                  ? const Color.fromARGB(255, 252, 252, 252)
                  : Colors.black,
              fontWeight: FontWeight.w600,
              fontSize: 14,
            ),
          ),
        ),
      ),
    );
  }
}
