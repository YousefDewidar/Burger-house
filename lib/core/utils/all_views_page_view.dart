import 'package:burger_house/core/utils/constant.dart';
import 'package:burger_house/features/home/presentation/view/home_view.dart';
import 'package:burger_house/features/home/presentation/view/widget/hello_row.dart';
import 'package:burger_house/features/menu/presentation/view/menu_view.dart';
import 'package:burger_house/features/profile/presentation/view/profile_view.dart';
import 'package:flutter/material.dart';

class AllViewsPageView extends StatefulWidget {
  const AllViewsPageView({super.key});

  @override
  State<AllViewsPageView> createState() => _AllViewsPageViewState();
}

class _AllViewsPageViewState extends State<AllViewsPageView> {
  PageController pageCon = PageController();
  int curInd = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        toolbarHeight: 100,
        title: const HelloRow(),
      ),
      backgroundColor: kBackgroundColor,
      body: PageView(
        controller: pageCon,
        onPageChanged: (value) {
          curInd = value;
          setState(() {});
        },
        children: const [HomeView(), MenuView(), ProfileView()],
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: curInd,
        indicatorColor: kPrimaryColor.withOpacity(.2),
        overlayColor: WidgetStatePropertyAll(kPrimaryColor.withOpacity(.04)),
        height: MediaQuery.of(context).size.height * .08,
        onDestinationSelected: (value) {
          curInd = value;
          pageCon.jumpToPage(curInd);
        },
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(
              icon: Icon(Icons.widgets_outlined), label: 'Menu'),
          NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
