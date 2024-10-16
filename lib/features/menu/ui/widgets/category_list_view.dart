import 'package:burger_house/features/menu/ui/widgets/category_type_card.dart';
import 'package:flutter/material.dart';

class CategoryListView extends StatefulWidget {
  const CategoryListView({super.key});

  @override
  State<CategoryListView> createState() => _CategoryListViewState();
}

class _CategoryListViewState extends State<CategoryListView> {
  int selectedInd = -1;

  final List<String> categorysTypeList = [
    'beef burger',
    'chicken burger',
    'the big',
    'burger',
    'chicken & fries snadwich',
    'sauces',
    'dessert',
    'milk shake',
    'drinks',
    'additions',
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: SizedBox(
        height: 70,
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          clipBehavior: Clip.none,
          scrollDirection: Axis.horizontal,
          itemCount: categorysTypeList.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                if (selectedInd == index) {
                  selectedInd = -1;
                } else {
                  selectedInd = index;
                }
                setState(() {});
              },
              child: CategoryTypeCard(
                selected: selectedInd == index,
                categoryName: categorysTypeList[index],
              ),
            );
          },
        ),
      ),
    );
  }
}
