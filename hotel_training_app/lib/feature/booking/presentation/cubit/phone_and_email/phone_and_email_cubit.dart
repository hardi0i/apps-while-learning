import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotel_app_for_sobes/common/enums/field_status.dart';
import 'package:hotel_app_for_sobes/config/theme/book_in_colors.dart';
import 'package:hotel_app_for_sobes/feature/booking/presentation/cubit/phone_and_email/phone_and_email_cubit_state.dart';

class PhoneAndEmailCubit extends Cubit<PhoneAndEmailCubitState> {
  PhoneAndEmailCubit() : super(const PhoneAndEmailCubitState());

  Future<void> updatePhoneNumber(String? phone) async {
    emit(
      state.copyWith(
        phone: phone,
      ),
    );
  }

  Future<void> updateEmail(String? email) async {
    emit(
      state.copyWith(
        email: email,
      ),
    );
  }

  Future<void> validatePhone() async {
    if ((state.phone == null || state.phone!.isEmpty) &&
        !state.isPhoneFieldFocused) {
      //Phone number cant be empty
      emit(
        state.copyWith(
          isPhoneValid: false,
          fieldStatusForPhone: FieldStatus.invalidEmpty,
          colorForPhoneField: BookInColors.errorColor,
        ),
      );
    } else if ((state.phone!.length < 10 && state.phone!.length > 1) &&
        !state.isPhoneFieldFocused) {
      //Too short phone number
      emit(
        state.copyWith(
          isPhoneValid: false,
          fieldStatusForPhone: FieldStatus.invalidFormat,
          colorForPhoneField: BookInColors.errorColor,
        ),
      );
    } else {
      //All is good
      emit(
        state.copyWith(
          isPhoneValid: true,
          fieldStatusForPhone: FieldStatus.valid,
          colorForPhoneField: BookInColors.fieldColor,
        ),
      );
    }
  }

  Future<void> validateEmail() async {
    if ((state.email == null || state.email!.isEmpty) &&
        !state.isEmailFieldFocused) {
      //Email cant be empty
      emit(
        state.copyWith(
          isEmailValid: false,
          fieldStatusForEmail: FieldStatus.invalidEmpty,
          colorForEmailField: BookInColors.errorColor,
        ),
      );
    } else if (!RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$')
            .hasMatch(state.email!) &&
        !state.isEmailFieldFocused) {
      //Invalid email format
      emit(
        state.copyWith(
          isEmailValid: false,
          fieldStatusForEmail: FieldStatus.invalidFormat,
          colorForEmailField: BookInColors.errorColor,
        ),
      );
    } else {
      //All is good
      emit(
        state.copyWith(
          isEmailValid: true,
          fieldStatusForEmail: FieldStatus.valid,
          colorForEmailField: BookInColors.fieldColor,
        ),
      );
    }
  }

  Future<void> changeFocusValue(String fieldName, bool value) async {
    if (fieldName == 'phone') {
      emit(
        state.copyWith(
          isPhoneFieldFocused: value,
        ),
      );

      validatePhone();
    } else {
      emit(
        state.copyWith(
          isEmailFieldFocused: value,
        ),
      );

      validateEmail();
    }
  }
}
