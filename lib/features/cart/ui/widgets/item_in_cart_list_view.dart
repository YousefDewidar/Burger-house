import 'package:burger_house/core/utils/widgets/space.dart';
import 'package:burger_house/features/cart/ui/widgets/item_in_cart_card.dart';
import 'package:flutter/material.dart';

class ItemInCartListView extends StatelessWidget {
  const ItemInCartListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: 2,
      itemBuilder: (context, index) {
        return const ItemInCartCard();
      },
      separatorBuilder: (context, index) {
        return const SpaceV(15);
      },
    );
  }
}
