
import 'package:flutter/material.dart';

class AddItemWithPriceRow extends StatelessWidget {
  const AddItemWithPriceRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text('\$20',
            style: TextStyle(
                color: Color(0xffC9AA05),
                fontSize: 18,
                fontWeight: FontWeight.w600)),
        CircleAvatar(
          radius: 10,
          backgroundColor: const Color(0xff0E803C),
          foregroundColor: Colors.white,
          child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.add),
              padding: EdgeInsets.zero,
              iconSize: 16),
        ),
      ],
    );
  }
}
