import 'package:burger_house/core/utils/constant.dart';
import 'package:burger_house/features/menu/logic/cubits/bottom%20sheet%20cubit/bottom_sheet_cubit.dart';
import 'package:burger_house/features/menu/logic/cubits/bottom%20sheet%20cubit/bottom_sheet_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddToCartButton extends StatelessWidget {
  final Map price;
  const AddToCartButton({
    super.key,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Constant.kPrimaryColor.withOpacity(.9),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          price['s'] == null
              ? Text(
                  '${price['d']} ج.م',
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                )
              : BlocBuilder<BottomSheetCubit, BottomSheetState>(
                  builder: (context, state) {
                    bool needDouble =
                        BlocProvider.of<BottomSheetCubit>(context).needDouble;
                    return Text(
                      '${needDouble ? price['d'] : price['s']} ج.م',
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    );
                  },
                ),
          const Text(
            ' اضف الي السلة',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
