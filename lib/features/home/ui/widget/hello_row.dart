import 'package:burger_house/core/utils/constant.dart';
// import 'package:burger_house/core/utils/styles.dart';
import 'package:burger_house/core/utils/widgets/space.dart';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HelloRow extends StatelessWidget {
  const HelloRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Icon(
              size: 35,
              Icons.location_on_sharp,
              color: Constant.kPrimaryColor,
            ),
            const SpaceH(10),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Delivery to',
                    style: TextStyle(
                        fontSize: 14,
                        color: Constant.kPrimaryColor,
                        fontWeight: FontWeight.w500)),
                Text('Tanta Center,Tanta',
                    style: TextStyle(fontSize: 18, height: 1)),
              ],
            ),
            const Spacer(),
            TextButton(
                onPressed: () {},
                child: Text('change',
                    style: TextStyle(
                        color: Constant.kPrimaryColor.withOpacity(.7))))
          ],
        ),
        const SpaceV(8),
        const Divider(
            height: 0, color: Color(0xFFD7D7D7), endIndent: 70, indent: 70),
      ],
    );
  }
}
