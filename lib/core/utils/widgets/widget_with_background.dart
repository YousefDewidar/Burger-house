import 'package:burger_house/core/utils/widgets/space.dart';
import 'package:flutter/material.dart';

class WidgetWithBackground extends StatelessWidget {
  const WidgetWithBackground({
    super.key,
    required this.widget,
    this.havBack = false,
  });
  final Widget widget;
  final bool havBack;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Positioned(
        top: 0,
        bottom: 0,
        left: 0,
        right: 0,
        child: Opacity(
          opacity: 0.1,
          child: Image.asset(
            'assets/images/foods.png',
            fit: BoxFit.fill,
          ),
        ),
      ),
      Positioned(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: widget),
      havBack
          ? Positioned(
              top: MediaQuery.of(context).size.height * 0.08,
              right: 5,
              height: 50,
              width: 50,
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.logout_outlined),
              ))
          : Positioned(
              top: MediaQuery.of(context).size.height * 0.08,
              right: 5,
              height: 50,
              width: 50,
              child: const SpaceV(0)),
    ]);
  }
}
