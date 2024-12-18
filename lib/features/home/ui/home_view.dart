import 'package:burger_house/core/utils/constant.dart';
import 'package:burger_house/core/utils/styles.dart';
import 'package:burger_house/core/utils/widgets/space.dart';
import 'package:burger_house/features/home/ui/widget/hello_row.dart';
import 'package:burger_house/features/home/ui/widget/offer_slider_list_view.dart';
import 'package:burger_house/features/home/ui/widget/popular_grid_view.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Constant.kPrimaryColor.withOpacity(0.1),
        scrolledUnderElevation: 0,
        title: const HelloRow(),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: ListView(
          padding: EdgeInsets.zero,
          scrollDirection: Axis.vertical,
          children: const [
            SpaceV(10),
            Text('Hot offers 🔥', style: Styles.style22),
            OfferSliderListView(),
            SpaceV(5),
            // SearchTextField(),
            Text('Popular', style: Styles.style22),
            SpaceV(13),
            PopularGridView()
          ],
        ),
      ),
    );
  }
}
