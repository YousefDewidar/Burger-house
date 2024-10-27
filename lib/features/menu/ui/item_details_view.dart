import 'package:burger_house/core/utils/constant.dart';
import 'package:burger_house/features/menu/data/models/item_model.dart';
import 'package:burger_house/features/menu/logic/cubits/details%20cubit/details_cubit.dart';
import 'package:burger_house/features/menu/ui/widgets/details%20view/add_to_cart.dart';
import 'package:burger_house/features/menu/ui/widgets/details%20view/custom_checkbox_for_details.dart';
import 'package:burger_house/features/menu/ui/widgets/details%20view/item_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ItemDetailsView extends StatelessWidget {
  const ItemDetailsView({super.key, required this.item});
  final ItemModel item;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => DetailsCubit(),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            // background with image
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(color: Constant.kPrimaryColor),
              child: Column(
                children: [
                  const Spacer(),
                  Hero(
                    tag: item.img ?? 'focla',
                    child: Image.asset(
                      'assets/images/burger_sandwich 1.png',
                      height: 200,
                      width: 300,
                    ),
                  ),
                  const Spacer(flex: 4),
                ],
              ),
            ),

            // details
            Container(
              padding: const EdgeInsets.only(left: 20, right: 20),
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(70)),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  ItemInfo(item: item),
                  // لو ينفع سبايسي حط الاختيار
                  item.spicy!
                      ? CustomCheckboxForDetails(
                          lable: 'سبايسي',
                          price: item.price,
                          color: Colors.black)
                      : const SizedBox(),
                  // لو في دابل حط الاختيار
                  item.price['s'] != null
                      ? CustomCheckboxForDetails(
                          lable: 'دابل', price: item.price, color: Colors.black)
                      : const SizedBox(),

                  const Spacer(),
                  AddToCart(price: item.price),
                  const SizedBox(height: 40),
                ],
              ),
            ),

            Positioned(
              top: 50.0,
              left: 25,
              child: IconButton(
                alignment: Alignment.topLeft,
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: Color.fromARGB(232, 255, 255, 255),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
