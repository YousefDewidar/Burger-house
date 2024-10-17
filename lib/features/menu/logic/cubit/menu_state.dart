import 'package:burger_house/features/menu/data/models/item_model.dart';

class MenuState {}

final class MenuInitial extends MenuState {}

final class ProductLoading extends MenuState {}

final class ProductSuccess extends MenuState {
  List<ItemModel> products;
  ProductSuccess(this.products);
}

final class ProductFailure extends MenuState {}
