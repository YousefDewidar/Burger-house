import 'package:burger_house/core/utils/constant.dart';
import 'package:burger_house/core/utils/widgets/space.dart';
import 'package:burger_house/features/menu/data/models/item_model.dart';
import 'package:flutter/material.dart';

class BottomSheetCard extends StatelessWidget {
  const BottomSheetCard({
    super.key,
    required this.item,
  });
  final ItemModel item;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/burger_sandwich 1.png',
                height: 130,
                width: 130,
              ),
              const Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  // title
                  Text(
                    item.name,
                    textDirection: TextDirection.rtl,
                    style: const TextStyle(
                        color: Color.fromARGB(233, 255, 255, 255),
                        fontSize: 20),
                  ),
                  // ingredients
                  SizedBox(
                    width: 170,
                    child: Text(
                      item.ingredients
                              ?.toString()
                              .substring(
                                  1, item.ingredients.toString().length - 1)
                              .replaceAll(',', ' +') ??
                          '',
                      textDirection: TextDirection.rtl,
                      maxLines: 3,
                      style: const TextStyle(
                        color: Color.fromARGB(255, 185, 185, 185),
                        fontSize: 14,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),

                  // prices
                  Row(
                    children: [
                      item.price['s'] == null
                          ? const SizedBox(width: 0)
                          : Row(
                              children: [
                                const CircleAvatar(
                                  backgroundColor: Colors.red,
                                  foregroundColor: Colors.white,
                                  radius: 12,
                                  child: Text('S'),
                                ),
                                const SpaceH(5),
                                Text(
                                  '${item.price['s']}',
                                  style: const TextStyle(
                                      color: Color.fromARGB(233, 255, 255, 255),
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                      const SpaceH(25),
                      item.price['s'] == null
                          ? const SizedBox()
                          : const CircleAvatar(
                              backgroundColor: Colors.green,
                              foregroundColor: Colors.white,
                              radius: 12,
                              child: Text('D'),
                            ),
                      const SpaceH(5),
                      Text(
                        '${item.price['d']}',
                        style: TextStyle(
                            color: const Color.fromARGB(233, 255, 255, 255),
                            fontSize: item.price['s'] == null ? 22 : 18,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
          CustomCheckBox(lable: 'سبايسي', price: item.price),
          const CustomDivider(),
          CustomCheckBox(lable: 'دابل', price: item.price),
          const CustomDivider(),
          const Spacer(),
          AddToCartButton(price: item.price),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}

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
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '${400} ج.م',
            textDirection: TextDirection.rtl,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
          Text(
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

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Divider(
      color: Color.fromARGB(99, 133, 133, 133),
      endIndent: 50,
      indent: 50,
      height: 0,
    );
  }
}

class CustomCheckBox extends StatefulWidget {
  final String lable;
  final Map price;

  const CustomCheckBox({
    super.key,
    required this.lable,
    required this.price,
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
        if (curVal ?? false) {
          curVal = false;
        } else {
          curVal = true;
        }
        setState(() {});
      },
      child: Container(
        color: Colors.transparent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Checkbox(
              value: curVal,
              onChanged: (v) {
                curVal = v;
                setState(() {});
              },
            ),
            Text(
              widget.lable,
              style: const TextStyle(
                  color: Color.fromARGB(233, 255, 255, 255), fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
