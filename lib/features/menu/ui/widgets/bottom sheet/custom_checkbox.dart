import 'package:flutter/material.dart';

class CustomCheckBox extends StatefulWidget {
  final String lable;
  final Map price;

  const CustomCheckBox({
    super.key,
    required this.lable,
    required this.price,
  });

  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  bool? curVal = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (curVal ?? false) {
          curVal = false;
        } else {
          curVal = true;
        }
        setState(() {});
      },
      child: Container(
        color: Colors.transparent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Checkbox(
              value: curVal,
              onChanged: (v) {
                curVal = v;
                setState(() {});
              },
            ),
            Text(
              widget.lable,
              style: const TextStyle(
                  color: Color.fromARGB(233, 255, 255, 255), fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
