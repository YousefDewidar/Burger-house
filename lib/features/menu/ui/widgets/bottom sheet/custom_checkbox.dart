import 'package:burger_house/features/menu/logic/cubits/bottom%20sheet%20cubit/bottom_sheet_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomCheckBox extends StatefulWidget {
  final String lable;
  final Color color;
  final Map price;

  const CustomCheckBox({
    super.key,
    required this.lable,
    required this.price, required this.color,
  });

  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  bool? curVal = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (widget.lable == 'دابل') {
          if (curVal ?? false) {
            curVal = false;
            BlocProvider.of<BottomSheetCubit>(context).setNeedDouble(false);
          } else {
            BlocProvider.of<BottomSheetCubit>(context).setNeedDouble(true);
            curVal = true;
          }
          setState(() {});
        } else {
          if (curVal ?? false) {
            curVal = false;
          } else {
            curVal = true;
          }
          setState(() {});
        }
      },
      child: Container(
        color: Colors.transparent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Checkbox(
              value: curVal,
              onChanged: (v) {
                if (widget.lable == 'دابل') {
                  if (curVal ?? false) {
                    BlocProvider.of<BottomSheetCubit>(context)
                        .setNeedDouble(false);
                  } else {
                    BlocProvider.of<BottomSheetCubit>(context)
                        .setNeedDouble(true);
                  }
                  setState(() {});
                }
                curVal = v;
                setState(() {});
              },
            ),
            Text(
              widget.lable,
              style:  TextStyle(
                  color: widget.color, fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
