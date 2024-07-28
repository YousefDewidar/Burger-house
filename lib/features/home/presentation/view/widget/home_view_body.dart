import 'package:burger_house/core/utils/styles.dart';
import 'package:burger_house/core/utils/widgets/space.dart';
import 'package:burger_house/features/home/presentation/view/widget/hello_row.dart';
import 'package:burger_house/features/home/presentation/view/widget/offer_card.dart';
import 'package:burger_house/features/home/presentation/view/widget/pouplar_card.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HelloRow(),
          SpaceV(5),
          Text('Hot offers', style: Styles.style22),
        
          OfferSliderListView(),
          SpaceV(15),

          // SearchTextField(),
          // CategoryListView(),
          Text('Popular', style: Styles.style22),
          SpaceV(13),
          PopularCard()
        ],
      ),
    );
  }
}

class OfferSliderListView extends StatelessWidget {
  const OfferSliderListView({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: 4,
      itemBuilder: (context, index, realIndex) {
        return const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: OfferCard(),
        ); 
      },
      options: CarouselOptions(
        autoPlayCurve: Curves.linear,
        viewportFraction: 1,
        animateToClosest: true,
        clipBehavior: Clip.none,
        autoPlay: true),
    );
  }
}
