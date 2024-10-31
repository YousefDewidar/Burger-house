import 'package:burger_house/core/utils/constant.dart';
import 'package:burger_house/core/utils/widgets/space.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AddMinusItem extends StatelessWidget {
  const AddMinusItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 10,
          backgroundColor: Constant.kPrimaryColor,
          foregroundColor: Colors.white,
          child: IconButton(
            onPressed: () {},
            icon: const Icon(FontAwesomeIcons.circleMinus),
            padding: EdgeInsets.zero,
            iconSize: 16,
          ),
        ),
        const SpaceH(17),
        const Text(
          '1',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
          ),
        ),
        const SpaceH(17),
        CircleAvatar(
          radius: 10,
          backgroundColor: Constant.kPrimaryColor,
          foregroundColor: Colors.white,
          child: IconButton(
            onPressed: () {},
            icon: const Icon(FontAwesomeIcons.circlePlus),
            padding: EdgeInsets.zero,
            iconSize: 16,
          ),
        ),
      ],
    );
  }
}
