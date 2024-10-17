import 'package:burger_house/core/utils/constant.dart';
import 'package:burger_house/core/utils/widgets/space.dart';
import 'package:burger_house/features/menu/data/models/item_model.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.item});
  final ItemModel item;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.only(bottom: 10),
      width: 161,
      height: 160,
      decoration: BoxDecoration(
        color: Constant.kGreyColor.withOpacity(.5),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
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
              Text(item.name,
                  textDirection: TextDirection.rtl,
                  style: const TextStyle(color: Colors.black, fontSize: 18)),
              SizedBox(
                width: 170,
                child: Text(
                  item.ingredients
                          ?.toString()
                          .substring(1, item.ingredients.toString().length - 1)
                          .replaceAll(',', ' +') ??
                      '',
                  textDirection: TextDirection.rtl,
                  maxLines: 3,
                  style: const TextStyle(
                      color: Color.fromARGB(255, 115, 115, 115), fontSize: 12),
                ),
              ),
              const Spacer(),
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
                                  color: Color(0xFF000000),
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
                        color: const Color(0xFF000000),
                        fontSize: item.price['s'] == null ? 22 : 18,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
