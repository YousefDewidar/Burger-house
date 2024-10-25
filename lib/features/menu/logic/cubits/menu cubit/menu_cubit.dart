import 'package:burger_house/features/menu/data/models/item_model.dart';
import 'package:burger_house/features/menu/data/repos/menu_repo.dart';
import 'package:burger_house/features/menu/logic/cubits/menu%20cubit/menu_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MenuCubit extends Cubit<MenuState> {
  MenuCubit() : super(MenuInitial());

  static final MenuRepo _menuRepo = MenuRepo();

  String categoryName = 'All Menu';

  void getProducts({required String? catName}) async {
    emit(ProductLoading());
    try {
      categoryName = catName ?? 'All Menu';
      List<ItemModel> products = await _menuRepo.setCategory(catName: catName);
      emit(ProductSuccess(products));
    } catch (e) {
      emit(ProductFailure());
    }
  }
}
