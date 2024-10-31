
import 'package:burger_house/core/utils/widgets/space.dart';
import 'package:flutter/material.dart';

class PricesCard extends StatelessWidget {
  const PricesCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SubTotalPrice(price: '52', title: 'Subtotal'),
        SpaceV(8),
        SubTotalPrice(price: '10', title: 'Tax'),
        SpaceV(8),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total',
                style: TextStyle(
                  color: Color(0xFF000000),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '62 Egp',
                style: TextStyle(
                  color: Color(0xffC9AA05),
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class SubTotalPrice extends StatelessWidget {
  final String title;
  final String price;

  const SubTotalPrice({
    super.key,
    required this.title,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
            color: Color(0xFF686868),
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          '$price Egp',
          style: const TextStyle(
            color: Color(0xFF686868),
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}
