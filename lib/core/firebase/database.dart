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

// search filter
  static Future<List<ItemModel>> search({
    required String collectionName,
    String? category,
    num? price,
    String? name,
  }) async {
    List<ItemModel> filterList = [];

    await _firestore
        .collection(collectionName)
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
}
