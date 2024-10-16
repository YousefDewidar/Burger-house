import 'package:burger_house/core/firebase/database.dart';
import 'package:burger_house/core/utils/constant.dart';
import 'package:burger_house/features/auth/ui/widgets/custom_button.dart';
import 'package:burger_house/features/menu/data/models/item_model.dart';
import 'package:flutter/material.dart';

class TestView extends StatelessWidget {
  const TestView({super.key});

  @override
  Widget build(BuildContext context) {
    List<ItemModel> items = [];

    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 80,
          width: 300,
          child: CustomButton(
            text: 'test',
            onPressed: () async {
              for (var element in items) {
                await Database.addItem(
                    collectionName: Constant.menuColName,
                    data: ItemModel(
                      id: element.id,
                      category: element.category,
                      name: element.name,
                      ingredients: element.ingredients,
                      price: element.price,
                      img: element.img,
                      spicy: element.spicy,
                      addition: element.addition,
                    ).toJson());
              }
            },
            color: Colors.green,
          ),
        ),
      ),
    );
  }
}

// اول سبع عناصر
// ItemModel(
//   id: 0,
//   category: 'beef burger',
//   name: "كلاسيك بيف",
//   ingredients: [
//     "بيف صوص",
//     "مايونيز",
//     'خيار مخلل',
//     'صوص باربكيو',
//     'خس',
//     'برجر بيف'
//   ],
//   price: {'s': 70, 'd': 105},
//   img: "product_images/0.png",
//   spicy: true,
//   addition: null,
// ),
// ItemModel(
//   id: 1,
//   category: 'beef burger',
//   name: "مشروم بيف",
//   ingredients: [
//     "بيف صوص",
//     "خيار مخلل",
//     "باربكيو",
//     'مشروم',
//     'بصل مشوي',
//     'خس',
//     'برجر بيف'
//   ],
//   price: {'s': 75, 'd': 110},
//   img: "product_images/1.png",
//   spicy: true,
//   addition: null,
// ),
// ItemModel(
//   id: 2,
//   category: 'beef burger',
//   name: "بيج تكساس",
//   ingredients: [
//     'برجر بيف',
//     "اصابع موزاريلا",
//     'حلقة بصل',
//     'خس',
//     "باربكيو",
//     'صوص تكساس',
//     'رانش',
//   ],
//   price: {'s': 85, 'd': 120},
//   img: "product_images/2.png",
//   spicy: true,
//   addition: null,
// ),
// ItemModel(
//   id: 3,
//   category: 'beef burger',
//   name: "اربيان بيف بيكون",
//   ingredients: [
//     'برجر بيف',
//     'خس',
//     "خيار مخلل",
//     'بيف صوص',
//     "اصابع موزاريلا",
//     'شريحة بيكون',
//     "باربكيو",
//     'تاي شيلي',
//   ],
//   price: {'s': 85, 'd': 120},
//   img: "product_images/3.png",
//   spicy: true,
//   addition: null,
// ),
// ItemModel(
//   id: 4,
//   category: 'beef burger',
//   name: "تشيز بيف",
//   ingredients: [
//     'بيف صوص',
//     'تاي شيلي',
//     "خيار مخلل",
//     'خس',
//     'صوص شيدر',
//     'برجر بيف'
//   ],
//   price: {'s': 75, 'd': 110},
//   img: "product_images/4.png",
//   spicy: true,
//   addition: null,
// ),
// ItemModel(
//   id: 5,
//   category: 'beef burger',
//   name: "ويمبي بيف",
//   ingredients: [
//     'برجر بيف',
//     'خس',
//     'فلفل هلابينو',
//     'توابل حار',
//     'مايونيز حار',
//     'بيف صوص',
//   ],
//   price: {'s': 75, 'd': 110},
//   img: "product_images/5.png",
//   spicy: true,
//   addition: null,
// ),
// ItemModel(
//   id: 6,
//   category: 'beef burger',
//   name: "تريبل بيف",
//   ingredients: [
//     "3 قطع برجر بيف",
//     'خس',
//     'خيار مخلل',
//     'صوص شيدر',
//     "باربكيو",
//     'تاي شيلي',
//     'بيف صوص',
//   ],
//   price: {'s': null, 'd': 155},
//   img: "product_images/6.png",
//   spicy: false,
//   addition: null,
// ),
