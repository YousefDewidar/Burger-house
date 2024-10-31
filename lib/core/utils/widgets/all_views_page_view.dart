import 'package:burger_house/core/utils/constant.dart';
import 'package:burger_house/features/cart/ui/cart_view.dart';
import 'package:burger_house/features/home/ui/home_view.dart';
import 'package:burger_house/features/menu/ui/menu_view.dart';
import 'package:burger_house/features/profile/ui/view/profile_view.dart';
import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AllViewsPageView extends StatefulWidget {
  const AllViewsPageView({super.key});

  @override
  State<AllViewsPageView> createState() => _AllViewsPageViewState();
}

class _AllViewsPageViewState extends State<AllViewsPageView> {
  int curInd = 0;
  List<Widget> pages = [
    const HomeView(),
    const MenuView(),
    const CartView(),
    const ProfileView()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[curInd],
      bottomNavigationBar: FlashyTabBar(
          height: 55,
          animationCurve: Curves.linear,
          backgroundColor: Constant.kBackgroundColor,
          showElevation: true,
          animationDuration: const Duration(milliseconds: 400),
          selectedIndex: curInd,
          items: [
            FlashyTabBarItem(
                activeColor: Constant.kPrimaryColor,
                icon: const Icon(FontAwesomeIcons.house),
                title: const Text('home')),
            FlashyTabBarItem(
                activeColor: Constant.kPrimaryColor,
                icon: const Icon(FontAwesomeIcons.burger),
                title: const Text('Menu')),
            FlashyTabBarItem(
                activeColor: Constant.kPrimaryColor,
                icon: const Icon(FontAwesomeIcons.cartShopping),
                title: const Text('Cart')),
            FlashyTabBarItem(
                activeColor: Constant.kPrimaryColor,
                icon: const Icon(FontAwesomeIcons.user),
                title: const Text('Notifiaction')),
          ],
          onItemSelected: (val) {
            curInd = val;
            setState(() {});
          }),
    );
  }
}
