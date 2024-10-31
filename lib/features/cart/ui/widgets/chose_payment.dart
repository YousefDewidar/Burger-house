import 'package:burger_house/core/utils/constant.dart';
import 'package:flutter/material.dart';

class ChosePayment extends StatefulWidget {
  const ChosePayment({
    super.key,
  });

  @override
  State<ChosePayment> createState() => _ChosePaymentState();
}

class _ChosePaymentState extends State<ChosePayment> {
  int selected = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            selected = 0;
            setState(() {});
          },
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            width: MediaQuery.of(context).size.width / 2 - 16,
            height: 80,
            decoration: BoxDecoration(
              color: selected == 0
                  ? const Color.fromARGB(233, 83, 117, 151)
                  : const Color.fromARGB(187, 105, 148, 190),
              border: selected == 0 ? Border.all() : const Border(),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),
            ),
            child: const Center(
                child:
                    Text('الدفع عند الإستلام', style: TextStyle(fontSize: 16))),
          ),
        ),
        GestureDetector(
          onTap: () {
            selected = 1;
            setState(() {});
          },
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            width: MediaQuery.of(context).size.width / 2 - 16,
            height: 80,
            decoration: BoxDecoration(
              color:
                  Constant.kPrimaryColor.withOpacity(selected == 1 ? 0.7 : 0.5),
              border: selected == 1 ? Border.all() : const Border(),
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: const Center(
                child: Text(
              'فودافون كاش',
              style: TextStyle(fontSize: 16),
            )),
          ),
        ),
      ],
    );
  }
}
