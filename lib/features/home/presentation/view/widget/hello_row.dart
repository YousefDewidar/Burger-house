import 'package:burger_house/core/utils/constant.dart';
import 'package:burger_house/core/utils/styles.dart';
import 'package:burger_house/core/utils/widgets/space.dart';
import 'package:flutter/material.dart';

class HelloRow extends StatelessWidget {
  const HelloRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Hello',
            style: Styles.style22
                .copyWith(fontSize: 34, fontWeight: FontWeight.w600)),
        const SpaceV(10),
        Row(
          children: [
            const Icon(
              size: 35,
              Icons.location_on_sharp,
              color: kPrimaryColor,
            ),
            const SpaceH(10),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Delivery to',
                    style: TextStyle(
                        fontSize: 14,
                        color: kPrimaryColor,
                        fontWeight: FontWeight.w500)),
                Text('Tanta Center,Tanta',
                    style: TextStyle(fontSize: 18, height: 1)),
              ],
            ),
            const Spacer(),
            TextButton(
                onPressed: () {},
                child: Text('change',
                    style: TextStyle(color: kPrimaryColor.withOpacity(.7))))
          ],
        ),
        const Divider(),
      ],
    );
  }
}