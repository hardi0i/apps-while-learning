import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hotel_app_for_sobes/common/base_status.dart';
import 'package:hotel_app_for_sobes/feature/booking/presentation/cubit/form/form_cubit.dart';

part 'form_manager_cubit_state.freezed.dart';

@freezed
class FormManagerCubitState with _$FormManagerCubitState {
  const factory FormManagerCubitState({
    @Default(BaseStatus.initial()) BaseStatus status,
    @Default([]) List<FormCubit> formCubitList,
  }) = _FormManagerCubitState;
}
