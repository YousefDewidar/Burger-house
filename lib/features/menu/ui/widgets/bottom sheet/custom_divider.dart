
import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Divider(
      color: Color.fromARGB(99, 133, 133, 133),
      endIndent: 50,
      indent: 50,
      height: 0,
    );
  }
}

