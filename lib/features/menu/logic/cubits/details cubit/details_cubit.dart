import 'package:burger_house/features/menu/logic/cubits/details%20cubit/details_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetailsCubit extends Cubit<DetailsState> {
  DetailsCubit() : super(DetailsInitial());
  bool needDouble = false;
  setNeedDouble(bool need) {
    needDouble = need;
    emit(NeedDState());
  }
}
