import 'package:burger_house/core/utils/constant.dart';
import 'package:burger_house/core/utils/widgets/space.dart';
import 'package:burger_house/features/cart/ui/widgets/chose_payment.dart';
import 'package:burger_house/features/cart/ui/widgets/item_in_cart_list_view.dart';
import 'package:burger_house/features/cart/ui/widgets/order_butt.dart';
import 'package:burger_house/features/cart/ui/widgets/prices_card.dart';
import 'package:flutter/material.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Constant.kPrimaryColor,
        // backgroundColor: Colors.transparent,
        title: Text(
          'Cart'.toUpperCase(),
          style: const TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: const SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SpaceV(12),
                ItemInCartListView(),
                SpaceV(12),
                Text(
                  'Payment Methoud',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SpaceV(12),
                ChosePayment(),
                SpaceV(12),
                PricesCard(),
                SpaceV(25),
                OrderButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
