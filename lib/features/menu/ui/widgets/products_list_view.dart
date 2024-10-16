import 'package:burger_house/core/firebase/database.dart';
import 'package:burger_house/features/menu/data/models/item_model.dart';
import 'package:burger_house/features/menu/ui/widgets/product_card.dart';
import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

class ProductsListView extends StatelessWidget {
  const ProductsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const List<ItemModel> dummyList = [
      ItemModel(category: '', id: 0, name: '', price: {}),
      ItemModel(category: '', id: 0, name: '', price: {}),
      ItemModel(category: '', id: 0, name: '', price: {}),
      ItemModel(category: '', id: 0, name: '', price: {}),
    ];

    return Expanded(
      child: FutureBuilder(
          future: Database.getProductsByCategory(category: 'beef burger'),
          builder: (context, snap) {
            if (snap.hasData) {
              List<ItemModel> productsList = snap.data!;
              return ListView.builder(
                padding: const EdgeInsets.only(top: 10),
                physics: const BouncingScrollPhysics(),
                itemCount: productsList.length,
                itemBuilder: (context, index) {
                  return ProductCard(
                    item: productsList[index],
                  );
                },
              );
            } else if (snap.connectionState == ConnectionState.waiting) {
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
          }),
    );
  }
}
