import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hotel_app_for_sobes/common/enums/field_status.dart';
import 'package:hotel_app_for_sobes/config/theme/book_in_colors.dart';

part 'form_cubit_state.freezed.dart';

@freezed
class FormCubitState with _$FormCubitState {
  const factory FormCubitState({
    @Default('') String name,
    @Default('') String surname,
    @Default('') String birthDate,
    @Default('') String citizenship,
    @Default('') String passportNumber,
    @Default('') String passportEndsDate,

    //validations flags
    @Default(false) bool isNameValid,
    @Default(false) bool isSurnameValid,
    @Default(false) bool isBirthdateValid,
    @Default(false) bool isCitizenshipValid,
    @Default(false) bool isPassportNumberValid,
    @Default(false) bool isPassportExpiryValid,

    //Colors
    @Default(BookInColors.fieldColor) Color colorForNameField,
    @Default(BookInColors.fieldColor) Color colorForSurnameField,
    @Default(BookInColors.fieldColor) Color colorForBirthdateField,
    @Default(BookInColors.fieldColor) Color colorForCitizenshipField,
    @Default(BookInColors.fieldColor) Color colorForPassportNumberField,
    @Default(BookInColors.fieldColor) Color colorForPassportEndsDateField,

    //status of error
    @Default(FieldStatus.initial) FieldStatus fieldStatusForName,
    @Default(FieldStatus.initial) FieldStatus fieldStatusForSurname,
    @Default(FieldStatus.initial) FieldStatus fieldStatusForBirthdate,
    @Default(FieldStatus.initial) FieldStatus fieldStatusForCitizenship,
    @Default(FieldStatus.initial) FieldStatus fieldStatusForPassportNumber,
    @Default(FieldStatus.initial) FieldStatus fieldStatusForPassportEndsDate,
  }) = _FormCubitState;
}
