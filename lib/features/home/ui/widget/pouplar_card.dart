import 'package:burger_house/core/utils/constant.dart';
import 'package:burger_house/features/home/ui/widget/add_item_row.dart';
import 'package:flutter/material.dart';

class PopularCard extends StatelessWidget {
  const PopularCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 161,
      decoration: BoxDecoration(
        color: Constant.kGreyColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/burger_sandwich 1.png', scale: 2.5),
          const Text('Beef Burger',
              style: TextStyle(color: Colors.black, fontSize: 18, height: 2.5)),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 27.0),
            child: AddItemWithPriceRow(),
          )
        ],
      ),
    );
  }
}
