import 'package:burger_house/core/utils/widgets/space.dart';
import 'package:burger_house/features/menu/data/models/item_model.dart';
import 'package:flutter/material.dart';

class ItemInfo extends StatelessWidget {
  final ItemModel item;
  const ItemInfo({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            // title
            Text(
              item.name,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 10),

            // ingredients
            SizedBox(
              width: MediaQuery.of(context).size.width * .75,
              child: Text(
                item.ingredients
                        ?.toString()
                        .substring(1, item.ingredients.toString().length - 1)
                        .replaceAll(',', ' +') ??
                    '',
                textDirection: TextDirection.rtl,
                maxLines: 3,
                style: const TextStyle(
                  color: Color.fromARGB(255, 99, 99, 99),
                  fontSize: 14,
                ),
              ),
            ),
            const SpaceV(10),

            // prices
            Row(
              // mainAxisAlignment: MainAxisAlignment.center,
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
                                // color: Color.fromARGB(233, 255, 255, 255),
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
                      // color: const Color.fromARGB(233, 255, 255, 255),
                      fontSize: item.price['s'] == null ? 22 : 18,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            const SpaceV(10),
          ],
        ),
      ],
    );
  }
}
