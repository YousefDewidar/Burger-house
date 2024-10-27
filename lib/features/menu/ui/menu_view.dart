import 'package:burger_house/core/utils/widgets/space.dart';
import 'package:burger_house/features/menu/logic/cubits/menu%20cubit/menu_cubit.dart';
import 'package:burger_house/features/menu/logic/cubits/menu%20cubit/menu_state.dart';
import 'package:burger_house/features/menu/ui/widgets/menu/category_list_view.dart';
import 'package:burger_house/features/menu/ui/widgets/menu/products_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MenuView extends StatelessWidget {
  const MenuView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MenuCubit(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            const SpaceV(50),
            Text(
              'Menu Sections'.toUpperCase(),
              style: const TextStyle(
                color: Colors.black,
                fontSize: 23,
                fontWeight: FontWeight.w600,
              ),
            ),
            const CategoryListView(),
            BlocBuilder<MenuCubit, MenuState>(
              builder: (context, state) {
                return Text(
                  BlocProvider.of<MenuCubit>(context)
                      .categoryName
                      .toUpperCase(),
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 23,
                    fontWeight: FontWeight.w600,
                  ),
                );
              },
            ),
            const ProductsListView(),
          ],
        ),
      ),
    );
  }
}
