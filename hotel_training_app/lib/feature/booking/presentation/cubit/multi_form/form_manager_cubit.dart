import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotel_app_for_sobes/common/base_status.dart';
import 'package:hotel_app_for_sobes/feature/booking/presentation/cubit/form/form_cubit.dart';
import 'package:hotel_app_for_sobes/feature/booking/presentation/cubit/multi_form/form_manager_cubit_state.dart';

class FormManagerCubit extends Cubit<FormManagerCubitState> {
  FormManagerCubit() : super(const FormManagerCubitState());

  Future<void> init() async {
    emit(
      state.copyWith(
        formCubitList: [
          FormCubit(),
        ],
      ),
    );
  }

  Future<void> addForm() async {
    if (state.formCubitList.length >= 4) {
      emit(
        state.copyWith(
          status: const BaseStatus.invalid(),
        ),
      );

      return;
    }

    emit(
      state.copyWith(
        formCubitList: [
          ...state.formCubitList,
          FormCubit(),
        ],
      ),
    );
  }

  bool validateAllFields() {
    for (var form in state.formCubitList) {
      form.validateName(form.state.name);
      form.validateSurname(form.state.surname);
      form.validateBirthdate(form.state.birthDate);
      form.validateCitizenship(form.state.citizenship);
      form.validatePassportNubmer(form.state.passportNumber);
      form.validatePassportEndsDate(form.state.passportEndsDate);

      if (!form.state.isNameValid ||
          !form.state.isSurnameValid ||
          !form.state.isBirthdateValid ||
          !form.state.isCitizenshipValid ||
          !form.state.isPassportNumberValid ||
          !form.state.isPassportExpiryValid) {
        return false;
      }
    }
    return true;
  }
}
