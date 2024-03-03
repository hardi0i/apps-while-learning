import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hotel_app_for_sobes/common/enums/field_status.dart';
import 'package:hotel_app_for_sobes/config/theme/book_in_colors.dart';

part 'phone_and_email_cubit_state.freezed.dart';

@freezed
class PhoneAndEmailCubitState with _$PhoneAndEmailCubitState {
  const factory PhoneAndEmailCubitState({
    @Default('') String? email,
    @Default('') String? phone,
    @Default(false) bool isPhoneValid,
    @Default(false) bool isEmailValid,
    @Default(BookInColors.fieldColor) Color colorForPhoneField,
    @Default(BookInColors.fieldColor) Color colorForEmailField,
    @Default(false) bool isPhoneFieldFocused,
    @Default(false) bool isEmailFieldFocused,
    @Default(FieldStatus.initial) FieldStatus fieldStatusForPhone,
    @Default(FieldStatus.initial) FieldStatus fieldStatusForEmail,
  }) = _PhoneAndEmailCubitState;
}
