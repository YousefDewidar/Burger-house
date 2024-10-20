import 'package:burger_house/features/home/ui/widget/offer_card.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class OfferSliderListView extends StatelessWidget {
  const OfferSliderListView({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: 2,
      itemBuilder: (context, index, realIndex) {
        return const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: OfferCard(),
        );
      },
      options: CarouselOptions(
        aspectRatio: 4 / 1.9,
        autoPlayCurve: Curves.linear,
        viewportFraction: 1,
        animateToClosest: true,
        clipBehavior: Clip.none,
        autoPlay: true,
      ),
    );
  }
}
