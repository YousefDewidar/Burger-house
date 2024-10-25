import 'package:burger_house/core/utils/constant.dart';
import 'package:burger_house/core/utils/widgets/space.dart';
import 'package:burger_house/features/menu/data/models/item_model.dart';
import 'package:burger_house/features/menu/ui/widgets/bottom%20sheet/add_to_cart_button.dart';
import 'package:burger_house/features/menu/ui/widgets/bottom%20sheet/custom_checkbox.dart';
import 'package:burger_house/features/menu/ui/widgets/bottom%20sheet/custom_divider.dart';
import 'package:flutter/material.dart';

class ItemDetailsView extends StatelessWidget {
  const ItemDetailsView({super.key, required this.item});
  final ItemModel item;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: Constant.kPrimaryColor,
            ),
            child: Column(
              children: [
                const Spacer(),
                Hero(
                  tag: item.img ?? 'focla',
                  child: Image.asset(
                    'assets/images/burger_sandwich 1.png',
                    height: 200,
                    width: 300,
                  ),
                ),
                const Spacer(flex: 4),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 20, right: 20),
            height: MediaQuery.of(context).size.height / 2,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(70)),
              color: Colors.white,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        // title
                        Text(
                          item.name,
                          textDirection: TextDirection.rtl,
                          style: const TextStyle(fontSize: 20),
                        ),
                        // ingredients
                        SizedBox(
                          width: 170,
                          child: Text(
                            item.ingredients
                                    ?.toString()
                                    .substring(1,
                                        item.ingredients.toString().length - 1)
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
                                            color: Color.fromARGB(
                                                233, 255, 255, 255),
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
                                  color:
                                      const Color.fromARGB(233, 255, 255, 255),
                                  fontSize: item.price['s'] == null ? 22 : 18,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
                CustomCheckBox(
                    lable: 'سبايسي', price: item.price, color: Colors.black),
                const CustomDivider(),
                item.price['s'] != null
                    ? CustomCheckBox(
                        lable: 'دابل', price: item.price, color: Colors.black)
                    : const SizedBox(),
                const CustomDivider(),
                // const Spacer(),
                AddToCartButton(price: item.price),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
