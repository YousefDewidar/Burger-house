import 'package:burger_house/features/menu/logic/cubits/details%20cubit/details_cubit.dart';
import 'package:burger_house/features/menu/ui/widgets/bottom%20sheet/custom_divider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomCheckboxForDetails extends StatefulWidget {
  final String lable;
  final Color color;
  final Map price;

  const CustomCheckboxForDetails({
    super.key,
    required this.lable,
    required this.price,
    required this.color,
  });

  @override
  State<CustomCheckboxForDetails> createState() =>
      _CustomCheckboxForDetailsState();
}

class _CustomCheckboxForDetailsState extends State<CustomCheckboxForDetails> {
  bool? curVal = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            if (widget.lable == 'دابل') {
              if (curVal ?? false) {
                curVal = false;
                BlocProvider.of<DetailsCubit>(context).setNeedDouble(false);
              } else {
                BlocProvider.of<DetailsCubit>(context).setNeedDouble(true);
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
                        BlocProvider.of<DetailsCubit>(context)
                            .setNeedDouble(false);
                      } else {
                        BlocProvider.of<DetailsCubit>(context)
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
                  style: TextStyle(color: widget.color, fontSize: 20),
                ),
              ],
            ),
          ),
        ),
        const CustomDivider(),
      ],
    );
  }
}
