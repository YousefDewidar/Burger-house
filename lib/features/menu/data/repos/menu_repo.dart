import 'package:burger_house/core/firebase/database.dart';
import 'package:burger_house/features/menu/data/models/item_model.dart';

class MenuRepo {
  Future<List<ItemModel>> setCategory({required String? catName}) async {
    List<ItemModel> products = [];

    if (catName != null) {
      products = await Database.getProductsByCategory(category: catName);
      return products;
    } else {
      products = await Database.getAllProduct();
      return products;
    }
  }
}
