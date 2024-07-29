import 'package:burger_house/core/utils/styles.dart';
import 'package:burger_house/core/utils/widgets/space.dart';
import 'package:burger_house/features/home/presentation/view/widget/offer_slider_list_view.dart';
import 'package:burger_house/features/home/presentation/view/widget/popular_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        padding: EdgeInsets.zero,
        scrollDirection: Axis.vertical,
        children: const [
          SpaceV(10),
          Text('Hot offers', style: Styles.style22),
          OfferSliderListView(),
          SpaceV(15),
          // SearchTextField(),
          // CategoryListView(),
          Text('Popular', style: Styles.style22),
          SpaceV(13),
          PopularGridView()
        ],
      ),
    );
  }
}
