import 'package:burger_house/core/utils/constant.dart';
import 'package:burger_house/core/utils/widgets/space.dart';
import 'package:burger_house/features/cart/ui/widgets/add_minus_item.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ItemInCartCard extends StatelessWidget {
  const ItemInCartCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 100,
          height: 125,
          decoration: BoxDecoration(
            color: Constant.kGreyColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Image.asset(
            'assets/images/burger_sandwich 1.png',
            scale: 4,
          ),
        ),
        const SpaceH(15),
        const Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Beef Burger',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
              ),
            ),
            SpaceV(12),
            Text(
              '\$20',
              style: TextStyle(
                  color: Color(0xffC9AA05),
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
            ),
            SpaceV(12),
            AddMinusItem(),
          ],
        ),
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: const Icon(FontAwesomeIcons.circleXmark),
          color: Constant.kSecColor,
          iconSize: 20,
        )
      ],
    );
  }
}
