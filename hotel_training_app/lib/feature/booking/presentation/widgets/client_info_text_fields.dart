import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:hotel_app_for_sobes/config/theme/theme_extensions.dart';
import 'package:hotel_app_for_sobes/feature/booking/presentation/cubit/phone_and_email/phone_and_email_cubit.dart';
import 'package:hotel_app_for_sobes/feature/booking/presentation/cubit/phone_and_email/phone_and_email_cubit_state.dart';

import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class ClienInfoTextFields extends StatefulWidget {
  const ClienInfoTextFields({super.key});

  @override
  State<ClienInfoTextFields> createState() => _ClienInfoTextFieldsState();
}

class _ClienInfoTextFieldsState extends State<ClienInfoTextFields> {
  final phoneNumberMaskFormatter = MaskTextInputFormatter(
    mask: '+7 (###) ###-##-##',
    filter: {"#": RegExp(r'[0-9]')},
    type: MaskAutoCompletionType.lazy,
  );

  late final FocusNode _phoneNubmerFocusNode;
  late final FocusNode _emailFocusNode;

  @override
  void initState() {
    super.initState();

    _phoneNubmerFocusNode = FocusNode();
    _emailFocusNode = FocusNode();
  }

  @override
  void dispose() {
    _phoneNubmerFocusNode.dispose();
    _emailFocusNode.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final bookInPalette = context.palette;
    final bookInTypography = context.typography;

    final focusScope = FocusScope.of(context);
    final localizations = AppLocalizations.of(context)!;

    return Container(
      padding: const EdgeInsets.all(
        16,
      ),
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: bookInPalette.backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            12,
          ),
        ),
      ),
      child: BlocBuilder<PhoneAndEmailCubit, PhoneAndEmailCubitState>(
        builder: (context, state) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                localizations.informationAboutTheBuyer,
                textAlign: TextAlign.start,
                style: bookInTypography.title1,
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 52.h,
                decoration: ShapeDecoration(
                  color: state.colorForPhoneField,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                  ),
                ),
                child: Focus(
                  onFocusChange: (value) => context
                      .read<PhoneAndEmailCubit>()
                      .changeFocusValue('phone', value),
                  child: TextFormField(
                    key: const ValueKey('phone'),
                    initialValue: '+7',
                    cursorHeight: 20.h,
                    focusNode: _phoneNubmerFocusNode,
                    style: bookInTypography.textField,
                    keyboardType: TextInputType.phone,
                    cursorColor: bookInPalette.highlightedColor,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 10,
                      ),
                      labelText: localizations.phoneNumber,
                      labelStyle: bookInTypography.hint,
                      errorBorder: InputBorder.none,
                      border: InputBorder.none,
                    ),
                    inputFormatters: [
                      phoneNumberMaskFormatter,
                    ],
                    onTapOutside: (_) => focusScope.unfocus(),
                    onFieldSubmitted: (_) =>
                        focusScope.requestFocus(_emailFocusNode),
                    onChanged: (value) =>
                        context.read<PhoneAndEmailCubit>().updatePhoneNumber(
                              phoneNumberMaskFormatter.getUnmaskedText(),
                            ),
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Container(
                height: 52.h,
                decoration: ShapeDecoration(
                  color: state.colorForEmailField,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                  ),
                ),
                child: Focus(
                  onFocusChange: (value) => context
                      .read<PhoneAndEmailCubit>()
                      .changeFocusValue('email', value),
                  child: TextFormField(
                    key: const ValueKey('email'),
                    cursorHeight: 20.h,
                    focusNode: _emailFocusNode,
                    cursorColor: bookInPalette.highlightedColor,
                    textInputAction: TextInputAction.done,
                    keyboardType: TextInputType.emailAddress,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    onFieldSubmitted: (_) => focusScope.unfocus(),
                    onTapOutside: (_) => focusScope.unfocus(),
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 10,
                      ),
                      labelText: localizations.eMail,
                      labelStyle: bookInTypography.hint,
                      border: InputBorder.none,
                    ),
                    onChanged: (value) =>
                        context.read<PhoneAndEmailCubit>().updateEmail(value),
                  ),
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              Text(
                localizations.securityInformation,
                textAlign: TextAlign.start,
                style: bookInTypography.label3.copyWith(
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
