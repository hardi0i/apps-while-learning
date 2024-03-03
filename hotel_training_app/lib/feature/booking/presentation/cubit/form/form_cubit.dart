import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotel_app_for_sobes/common/enums/field_status.dart';
import 'package:hotel_app_for_sobes/config/theme/book_in_colors.dart';
import 'package:hotel_app_for_sobes/feature/booking/presentation/cubit/form/form_cubit_state.dart';

class FormCubit extends Cubit<FormCubitState> {
  FormCubit() : super(const FormCubitState());

  void updateForm({
    String? name,
    String? surname,
    String? citizenship,
    String? birthDate,
    String? passportNumber,
    String? passportEndsDate,
  }) {
    emit(
      FormCubitState(
        name: name ?? state.name,
        surname: surname ?? state.surname,
        birthDate: birthDate ?? state.birthDate,
        citizenship: citizenship ?? state.citizenship,
        passportNumber: passportNumber ?? state.passportNumber,
        passportEndsDate: passportEndsDate ?? state.passportEndsDate,
      ),
    );
  }

  // Name validation
  Future<void> validateName(String? value) async {
    if (value == null || value.isEmpty) {
      emit(
        state.copyWith(
          name: value ?? state.name,
          isNameValid: false,
          colorForNameField: BookInColors.errorColor,
          fieldStatusForName: FieldStatus.invalidEmpty,
        ),
      );
    } else {
      emit(
        state.copyWith(
          name: value,
          isNameValid: true,
          colorForNameField: BookInColors.fieldColor,
          fieldStatusForName: FieldStatus.valid,
        ),
      );
    }
  }

  // Surname validation
  Future<void> validateSurname(String? value) async {
    if (value == null || value.isEmpty) {
      emit(
        state.copyWith(
          surname: value ?? state.surname,
          isSurnameValid: false,
          colorForSurnameField: BookInColors.errorColor,
          fieldStatusForSurname: FieldStatus.invalidEmpty,
        ),
      );
    } else {
      emit(
        state.copyWith(
          surname: value,
          isSurnameValid: true,
          colorForSurnameField: BookInColors.fieldColor,
          fieldStatusForSurname: FieldStatus.valid,
        ),
      );
    }
  }

  // Birthdate validation
  Future<void> validateBirthdate(String? value) async {
    if (value == null || value.isEmpty) {
      emit(
        state.copyWith(
          birthDate: value ?? state.birthDate,
          isBirthdateValid: false,
          colorForBirthdateField: BookInColors.errorColor,
          fieldStatusForBirthdate: FieldStatus.invalidEmpty,
        ),
      );
    } else if (value.length < 10) {
      emit(
        state.copyWith(
          birthDate: value,
          isBirthdateValid: false,
          colorForBirthdateField: BookInColors.errorColor,
          fieldStatusForBirthdate: FieldStatus.invalidFormat,
        ),
      );
    } else {
      emit(
        state.copyWith(
          birthDate: value,
          isBirthdateValid: true,
          colorForBirthdateField: BookInColors.fieldColor,
          fieldStatusForBirthdate: FieldStatus.valid,
        ),
      );
    }
  }

  // Citizenship validation
  Future<void> validateCitizenship(String? value) async {
    if (value == null || value.isEmpty) {
      emit(
        state.copyWith(
            citizenship: value ?? state.citizenship,
            isCitizenshipValid: false,
            colorForCitizenshipField: BookInColors.errorColor,
            fieldStatusForCitizenship: FieldStatus.invalidEmpty),
      );
    } else if (value.length < 5) {
      emit(
        state.copyWith(
          citizenship: value,
          isCitizenshipValid: false,
          colorForCitizenshipField: BookInColors.errorColor,
          fieldStatusForCitizenship: FieldStatus.invalidFormat,
        ),
      );
    } else {
      emit(
        state.copyWith(
          citizenship: value,
          isCitizenshipValid: true,
          colorForCitizenshipField: BookInColors.fieldColor,
          fieldStatusForCitizenship: FieldStatus.valid,
        ),
      );
    }
  }

  // Passport nubmer validation
  Future<void> validatePassportNubmer(String? value) async {
    if (value == null || value.isEmpty) {
      emit(
        state.copyWith(
          passportNumber: value ?? state.passportNumber,
          isPassportNumberValid: false,
          colorForPassportNumberField: BookInColors.errorColor,
          fieldStatusForCitizenship: FieldStatus.invalidEmpty,
        ),
      );
    } else if (value.length < 5) {
      emit(
        state.copyWith(
          passportNumber: value,
          isPassportNumberValid: false,
          colorForPassportNumberField: BookInColors.errorColor,
          fieldStatusForCitizenship: FieldStatus.invalidFormat,
        ),
      );
    } else {
      emit(
        state.copyWith(
          passportNumber: value,
          isPassportNumberValid: true,
          colorForPassportNumberField: BookInColors.fieldColor,
          fieldStatusForCitizenship: FieldStatus.valid,
        ),
      );
    }
  }

  // Passport ends date validation
  Future<void> validatePassportEndsDate(String? value) async {
    if (value == null || value.isEmpty) {
      emit(
        state.copyWith(
          passportEndsDate: value ?? state.passportEndsDate,
          isPassportExpiryValid: false,
          colorForPassportEndsDateField: BookInColors.errorColor,
          fieldStatusForPassportEndsDate: FieldStatus.invalidEmpty,
        ),
      );
    } else if (value.length < 7) {
      emit(
        state.copyWith(
          passportEndsDate: value,
          isPassportExpiryValid: false,
          colorForPassportEndsDateField: BookInColors.errorColor,
          fieldStatusForPassportEndsDate: FieldStatus.invalidFormat,
        ),
      );
    } else {
      emit(
        state.copyWith(
          passportEndsDate: value,
          isPassportExpiryValid: true,
          colorForPassportEndsDateField: BookInColors.fieldColor,
          fieldStatusForPassportEndsDate: FieldStatus.valid,
        ),
      );
    }
  }
}
