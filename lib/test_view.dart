import 'package:burger_house/core/firebase/database.dart';
import 'package:burger_house/core/utils/constant.dart';
import 'package:burger_house/features/auth/ui/widgets/custom_button.dart';
import 'package:burger_house/features/menu/data/models/item_model.dart';
import 'package:flutter/material.dart';

class TestView extends StatelessWidget {
  const TestView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 80,
          width: 300,
          child: CustomButton(
            text: 'test',
            onPressed: () async {
              for (var element in items) {
                await Database.addItem(
                    collectionName: Constant.menuColName,
                    data: ItemModel(
                      id: element.id,
                      category: element.category,
                      name: element.name,
                      ingredients: element.ingredients,
                      price: element.price,
                      img: element.img,
                      spicy: element.spicy,
                      addition: element.addition,
                    ).toJson());
              }
            },
            color: Colors.green,
          ),
        ),
      ),
    );
  }
}

List<ItemModel> items = [];
