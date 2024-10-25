import 'package:burger_house/features/menu/data/models/item_model.dart';
import 'package:burger_house/features/menu/logic/cubits/menu%20cubit/menu_cubit.dart';
import 'package:burger_house/features/menu/logic/cubits/menu%20cubit/menu_state.dart';
import 'package:burger_house/features/menu/ui/widgets/product_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';

class ProductsListView extends StatefulWidget {
  const ProductsListView({
    super.key,
  });

  @override
  State<ProductsListView> createState() => _ProductsListViewState();
}

class _ProductsListViewState extends State<ProductsListView> {
  final List<ItemModel> dummyList = const [
    ItemModel(category: '', id: 0, name: '', price: {'s': 0, 'd': 0}),
    ItemModel(category: '', id: 0, name: '', price: {'s': 0, 'd': 0}),
    ItemModel(category: '', id: 0, name: '', price: {'s': 0, 'd': 0}),
    ItemModel(category: '', id: 0, name: '', price: {'s': 0, 'd': 0}),
  ];

  @override
  void initState() {
    super.initState();
    context.read<MenuCubit>().getProducts(catName: null);
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<MenuCubit, MenuState>(
        builder: (context, state) {
          if (state is ProductSuccess) {
            return ListView.builder(
              padding: const EdgeInsets.only(top: 10),
              physics: const BouncingScrollPhysics(),
              itemCount: state.products.length,
              itemBuilder: (context, index) {
                return ProductCard(
                  item: state.products[index],
                );
              },
            );
          } else if (state is ProductLoading) {
            return Skeletonizer(
              enabled: true,
              child: ListView.builder(
                padding: const EdgeInsets.only(top: 10),
                itemCount: dummyList.length,
                itemBuilder: (context, index) {
                  return ProductCard(
                    item: dummyList[index],
                  );
                },
              ),
            );
          } else {
            return const Center(child: Text('Error in get data'));
          }
        },
      ),
    );
  }
}
