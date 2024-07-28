
import 'package:flutter/material.dart';

class OfferContent extends StatelessWidget {
  const OfferContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Today’s Offer',
              style: TextStyle(
                  fontSize: 16, color: Color(0xffFFFBFB), height: 1.7),
            ),
            Text(
              'Free box of Fries',
              style: TextStyle(
                  fontSize: 19,
                  color: Color(0xffFFFBFB),
                  height: 1.7,
                  fontWeight: FontWeight.w600),
            ),
            Text(
              'on all orders above \$150',
              style: TextStyle(
                  fontSize: 14, height: 1.7, color: Color(0xffFFFBFB)),
            ),
          ],
        ),
        Container(
          height: 95,
          width: 95,
          decoration: BoxDecoration(
            color: Colors.white30,
            image: const DecorationImage(
                image:
                    AssetImage('assets/images/French-fries-b9e3e0c 1.jpg')),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ],
    );
  }
}
