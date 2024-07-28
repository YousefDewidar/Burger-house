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
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Today’s Offer',
              style: TextStyle(
                  fontSize: 17, color: Color(0xffFFFBFB), height: 1.5),
            ),
            Text(
              'Free box of Fries',
              style: TextStyle(
                  fontSize: 20,
                  color: Color(0xffFFFBFB),
                  height: 1.5,
                  fontWeight: FontWeight.w600),
            ),
            Text(
              'on all orders above \$150',
              style: TextStyle(
                  fontSize: 16, height: 1.5, color: Color(0xffFFFBFB)),
            ),
          ],
        ),
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            color: Colors.white30,
            image: const DecorationImage(
                image: AssetImage('assets/images/French-fries-b9e3e0c 1.jpg')),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ],
    );
  }
}
