import 'package:burger_house/features/menu/logic/cubits/bottom%20sheet%20cubit/bottom_sheet_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BottomSheetCubit extends Cubit<BottomSheetState> {
  BottomSheetCubit() : super(BottomSheetInitial());
}
