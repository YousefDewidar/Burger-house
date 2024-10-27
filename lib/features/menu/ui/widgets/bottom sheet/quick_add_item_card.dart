import 'package:burger_house/core/utils/widgets/space.dart';
import 'package:burger_house/features/menu/data/models/item_model.dart';
import 'package:burger_house/features/menu/ui/widgets/bottom%20sheet/add_to_cart_button.dart';
import 'package:burger_house/features/menu/ui/widgets/bottom%20sheet/custom_checkbox.dart';
import 'package:flutter/material.dart';

class QuickAddItemCard extends StatelessWidget {
  const QuickAddItemCard({
    super.key,
    required this.item,
  });
  final ItemModel item;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/burger_sandwich 1.png',
                height: 130,
                width: 130,
              ),
              const Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  // title
                  Text(
                    item.name,
                    textDirection: TextDirection.rtl,
                    style: const TextStyle(
                        color: Color.fromARGB(233, 255, 255, 255),
                        fontSize: 20),
                  ),
                  // ingredients
                  SizedBox(
                    width: 170,
                    child: Text(
                      item.ingredients
                              ?.toString()
                              .substring(
                                  1, item.ingredients.toString().length - 1)
                              .replaceAll(',', ' +') ??
                          '',
                      textDirection: TextDirection.rtl,
                      maxLines: 3,
                      style: const TextStyle(
                        color: Color.fromARGB(255, 185, 185, 185),
                        fontSize: 14,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),

                  // prices
                  Row(
                    children: [
                      item.price['s'] == null
                          ? const SizedBox(width: 0)
                          : Row(
                              children: [
                                const CircleAvatar(
                                  backgroundColor: Colors.red,
                                  foregroundColor: Colors.white,
                                  radius: 12,
                                  child: Text('S'),
                                ),
                                const SpaceH(5),
                                Text(
                                  '${item.price['s']}',
                                  style: const TextStyle(
                                      color: Color.fromARGB(233, 255, 255, 255),
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                      const SpaceH(25),
                      item.price['s'] == null
                          ? const SizedBox()
                          : const CircleAvatar(
                              backgroundColor: Colors.green,
                              foregroundColor: Colors.white,
                              radius: 12,
                              child: Text('D'),
                            ),
                      const SpaceH(5),
                      Text(
                        '${item.price['d']}',
                        style: TextStyle(
                            color: const Color.fromARGB(233, 255, 255, 255),
                            fontSize: item.price['s'] == null ? 22 : 18,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
          item.spicy!
              ? CustomCheckBox(
                  lable: 'سبايسي',
                  price: item.price,
                  color: const Color.fromARGB(233, 255, 255, 255),
                )
              : const SizedBox(),
          item.price['s'] != null
              ? CustomCheckBox(
                  lable: 'دابل',
                  price: item.price,
                  color: const Color.fromARGB(233, 255, 255, 255),
                )
              : const SizedBox(),
          const Spacer(),
          AddToCartButton(price: item.price),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
