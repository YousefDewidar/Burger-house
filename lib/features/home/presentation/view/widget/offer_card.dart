import 'package:burger_house/core/utils/constant.dart';
import 'package:flutter/material.dart';

import 'offer_content.dart';

class OfferCard extends StatelessWidget {
  const OfferCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 4),
      padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 18),
      height: 130,
      width: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                kPrimaryColor,
                kPrimaryColor.withAlpha(210),
              ]),
          borderRadius: BorderRadius.circular(20)),
      child: const OfferContent(),
    );
  }
}
