import 'package:burger_house/core/utils/constant.dart';
import 'package:burger_house/core/utils/widgets/space.dart';
import 'package:burger_house/features/menu/data/models/item_model.dart';
import 'package:burger_house/features/menu/logic/cubits/bottom%20sheet%20cubit/bottom_sheet_cubit.dart';
import 'package:burger_house/features/menu/ui/item_details_view.dart';
import 'package:burger_house/features/menu/ui/quick_add_item_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:page_transition/page_transition.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.item});
  final ItemModel item;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          PageTransition(
            child: ItemDetailsView(item: item),
            type: PageTransitionType.rightToLeft,
          ),
        );
      },
      onLongPress: () {
        showModalBottomSheet(
          backgroundColor: const Color(0xFF141414),
          showDragHandle: true,
          context: context,
          builder: (context) {
            return BlocProvider(
              create: (context) => BottomSheetCubit(),
              child: QuickAddItemCard(item: item),
            );
          },
        );
      },
      child: Container(
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
            Hero(
              tag: item.img ?? 'focla',
              child: Image.asset(
                'assets/images/burger_sandwich 1.png',
                height: 130,
                width: 130,
              ),
            ),
            const Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                // title
                SizedBox(
                  width: 200,
                  child: Text(
                    item.name,
                    textDirection: TextDirection.rtl,
                    style: const TextStyle(color: Colors.black, fontSize: 18),
                  ),
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
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      color: Color.fromARGB(255, 115, 115, 115),
                      fontSize: 13,
                    ),
                  ),
                ),
                const Spacer(),
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
      ),
    );
  }
}
