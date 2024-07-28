import 'package:flutter/material.dart';

import 'offer_content.dart';

class OfferCard extends StatelessWidget {
  const OfferCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 5,bottom: 15),
      padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 18),
      height: 150,
      width: double.infinity,
      decoration: BoxDecoration(
          gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xff9577F2),
                Color(0xffA085F7),
                
              ]),
          borderRadius: BorderRadius.circular(20)),
      child: const OfferContent(),
    );
  }
}
