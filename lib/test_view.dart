import 'dart:developer';

import 'package:burger_house/core/firebase/database.dart';
import 'package:burger_house/core/utils/constant.dart';
import 'package:burger_house/features/auth/ui/widgets/custom_button.dart';
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
              // await  Database.addItem(
              //             collectionName: Constant.menuColName,
              //             data: ItemModel(
              //               name: "فروجة كاملة",
              //               desc: 'وجبة الفراخ الطازجة ',
              //               category: 'وجبات',
              //               ingredients: ['فراخ', 'ارز', 'سلطات'],
              //               price: 120,
              //             ).toJson());

              var list = await Database.searchFilter(collectionName: Constant.menuColName,price: 120);
              log(list[0].desc.toString());
            },
            color: Colors.green,
          ),
        ),
      ),
    );
  }
}

