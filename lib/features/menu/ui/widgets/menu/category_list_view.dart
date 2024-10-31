import 'package:burger_house/features/menu/logic/cubits/menu%20cubit/menu_cubit.dart';
import 'package:burger_house/features/menu/ui/widgets/menu/category_type_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoryListView extends StatefulWidget {
  const CategoryListView({super.key});

  @override
  State<CategoryListView> createState() => _CategoryListViewState();
}

class _CategoryListViewState extends State<CategoryListView> {
  int selectedInd = 0;

  final List<String> categorysName = [
    'all menu',
    'beef burger',
    'chicken burger',
    'big',
    'meals',
    'burger',
    'chicken & fries sandwich',
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
          itemCount: categorysName.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                if (selectedInd == index) {
                  context.read<MenuCubit>().getProducts(catName: 'all menu');
                  selectedInd = 0;
                } else {
                  context.read<MenuCubit>().getProducts(
                        catName: categorysName[index],
                      );
                  selectedInd = index;
                }
                setState(() {});
              },
              child: CategoryTypeCard(
                selected: selectedInd == index,
                categoryName: categorysName[index],
              ),
            );
          },
        ),
      ),
    );
  }
}
