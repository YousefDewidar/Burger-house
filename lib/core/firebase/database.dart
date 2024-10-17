import 'package:burger_house/core/utils/constant.dart';
import 'package:burger_house/features/menu/data/models/item_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Database {
  static final FirebaseFirestore _firestore = FirebaseFirestore.instance;

// add items
  static Future<void> addItem({
    required String collectionName,
    required Map<String, dynamic> data,
  }) async {
    await _firestore.collection(collectionName).add(data);
  }

// search filter in menu
  static Future<List<ItemModel>> searchFilter({
    String? category,
    num? price,
    String? name,
  }) async {
    List<ItemModel> filterList = [];

    await _firestore
        .collection(Constant.menuColName)
        .where('category', isEqualTo: category)
        .where('price', isLessThanOrEqualTo: price)
        .where('name', isEqualTo: name)
        .get()
        .then((val) {
      for (var item in val.docs) {
        filterList.add(ItemModel.formJson(item.data()));
      }
    });
    return filterList;
  }

  static Future<List<ItemModel>> getProductsByCategory({
    required String category,
  }) async {
    List<ItemModel> filterList = [];

    await _firestore
        .collection(Constant.menuColName)
        .where('category', isEqualTo: category)
        .get()
        .then((val) {
      for (var item in val.docs) {
        filterList.add(ItemModel.formJson(item.data()));
      }
    });
    return filterList;
  }

// get all products
  static Future<List<ItemModel>> getAllProduct() async {
    List<ItemModel> filterList = [];
    await _firestore
        .collection(Constant.menuColName)
        .orderBy('id', descending: false)
        .get()
        .then((val) {
      for (var item in val.docs) {
        filterList.add(ItemModel.formJson(item.data()));
      }
    });
    return filterList;
  }
}
