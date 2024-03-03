import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:hotel_app_for_sobes/config/theme/theme_extensions.dart';
import 'package:hotel_app_for_sobes/feature/booking/presentation/cubit/form/form_cubit.dart';
import 'package:hotel_app_for_sobes/feature/booking/presentation/cubit/form/form_cubit_state.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class TouristInfoTile extends StatefulWidget {
  const TouristInfoTile({
    super.key,
    required this.placeInListOfTourists,
    required this.formCubit,
  });

  final int placeInListOfTourists;
  final FormCubit formCubit;

  @override
  State<TouristInfoTile> createState() => _TouristInfoTileState();
}

class _TouristInfoTileState extends State<TouristInfoTile> {
  bool isTileChange = false;
  double rotation = 0.5;

  final birthdateMask = MaskTextInputFormatter(
    mask: '##.##.####',
    filter: {"#": RegExp(r'^[\d.]+$')},
    type: MaskAutoCompletionType.eager,
  );

  final passportEndsDateMask = MaskTextInputFormatter(
    mask: '##.####',
    filter: {"#": RegExp(r'^[\d.]+$')},
    type: MaskAutoCompletionType.eager,
  );

  late final FocusNode _nameFocusNode;

  late final FocusNode _surnameFocusNode;

  late final FocusNode _birthdateFocusNode;

  late final FocusNode _citizenshipFocusNode;

  late final FocusNode _passportNumberFocusNode;

  late final FocusNode _passportEndsDateFocusNode;

  @override
  void initState() {
    super.initState();

    _nameFocusNode = FocusNode();

    _surnameFocusNode = FocusNode();

    _birthdateFocusNode = FocusNode();

    _citizenshipFocusNode = FocusNode();

    _passportNumberFocusNode = FocusNode();

    _passportEndsDateFocusNode = FocusNode();
  }

  @override
  void dispose() {
    _nameFocusNode.dispose();

    _surnameFocusNode.dispose();

    _birthdateFocusNode.dispose();

    _citizenshipFocusNode.dispose();

    _passportNumberFocusNode.dispose();

    _passportEndsDateFocusNode.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;

    final bookInTypography = context.typography;
    final bookInPalette = context.palette;

    final focusScope = FocusScope.of(context);

    return Padding(
      padding: const EdgeInsets.only(
        bottom: 8.0,
      ),
      child: BlocBuilder<FormCubit, FormCubitState>(
        builder: (context, state) {
          return ExpansionTile(
            maintainState: true,
            initiallyExpanded: widget.placeInListOfTourists == 1 ? true : false,
            childrenPadding: const EdgeInsets.all(
              16,
            ),
            backgroundColor: bookInPalette.backgroundColor,
            collapsedBackgroundColor: bookInPalette.backgroundColor,
            collapsedShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                15,
              ),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                15,
              ),
            ),
            onExpansionChanged: (value) {
              setState(
                () {
                  isTileChange = value;
                  value ? rotation += 0.5 : rotation -= 0.5;
                },
              );
            },
            title: Text(
              widget.placeInListOfTourists.comparison,
              textAlign: TextAlign.start,
              style: bookInTypography.title1,
            ),
            trailing: Container(
              width: 32,
              height: 32,
              decoration: ShapeDecoration(
                color: bookInPalette.highlightedDisabledColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    6,
                  ),
                ),
              ),
              child: AnimatedRotation(
                duration: const Duration(
                  milliseconds: 200,
                ),
                turns: rotation,
                child: Icon(
                  widget.placeInListOfTourists == 1
                      ? Icons.keyboard_arrow_down
                      : Icons.keyboard_arrow_up,
                  weight: 2,
                  color: bookInPalette.highlightedColor,
                ),
              ),
            ),
            children: [
              Container(
                height: 52.h,
                decoration: ShapeDecoration(
                  color: state.colorForNameField,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                  ),
                ),
                child: TextFormField(
                  key: const ValueKey('name'),
                  focusNode: _nameFocusNode,
                  cursorHeight: 20.h,
                  style: bookInTypography.textField,
                  cursorColor: bookInPalette.highlightedColor,
                  keyboardType: TextInputType.name,
                  textInputAction: TextInputAction.next,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  inputFormatters: [
                    FilteringTextInputFormatter.deny(
                      RegExp(r'[\d=+-;,.<>~\@|"!?\]\[{]'),
                    ),
                  ],
                  decoration: InputDecoration(
                    labelText: localizations.labelTextForName,
                    labelStyle: bookInTypography.hint,
                    border: InputBorder.none,
                    errorBorder: InputBorder.none,
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 10,
                    ),
                  ),
                  onTapOutside: (_) => focusScope.unfocus(),
                  onFieldSubmitted: (_) =>
                      focusScope.requestFocus(_surnameFocusNode),
                  onChanged: (value) {
                    widget.formCubit.validateName(value);
                  },
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              Container(
                height: 52.h,
                decoration: ShapeDecoration(
                  color: state.colorForSurnameField,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                  ),
                ),
                child: TextFormField(
                  key: const ValueKey('surname'),
                  cursorHeight: 20.h,
                  style: bookInTypography.textField,
                  cursorColor: bookInPalette.highlightedColor,
                  keyboardType: TextInputType.name,
                  textInputAction: TextInputAction.next,
                  focusNode: _surnameFocusNode,
                  inputFormatters: [
                    FilteringTextInputFormatter.deny(
                      RegExp(r'[\d=+-;,.<>~\@|"!?\]\[{]'),
                    ),
                  ],
                  decoration: InputDecoration(
                    labelText: localizations.labelTextForSurname,
                    labelStyle: bookInTypography.hint,
                    border: InputBorder.none,
                    errorBorder: InputBorder.none,
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 10,
                    ),
                  ),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  onFieldSubmitted: (_) =>
                      focusScope.requestFocus(_birthdateFocusNode),
                  onTapOutside: (_) => focusScope.unfocus(),
                  onChanged: (value) {
                    widget.formCubit.validateSurname(value);
                  },
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              Container(
                height: 52.h,
                decoration: ShapeDecoration(
                  color: state.colorForBirthdateField,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                  ),
                ),
                child: TextFormField(
                  key: const ValueKey('birthdate'),
                  cursorHeight: 20.h,
                  cursorColor: bookInPalette.highlightedColor,
                  style: bookInTypography.textField,
                  keyboardType: TextInputType.datetime,
                  textInputAction: TextInputAction.next,
                  inputFormatters: [
                    birthdateMask,
                  ],
                  focusNode: _birthdateFocusNode,
                  decoration: InputDecoration(
                    labelText: localizations.labelTextForBirthdate,
                    labelStyle: bookInTypography.hint,
                    hintText: localizations.hintTextForBirthdate,
                    hintStyle: bookInTypography.hint,
                    border: InputBorder.none,
                    errorBorder: InputBorder.none,
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 10,
                    ),
                  ),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  onFieldSubmitted: (_) =>
                      focusScope.requestFocus(_citizenshipFocusNode),
                  onTapOutside: (_) => focusScope.unfocus(),
                  onChanged: (value) {
                    widget.formCubit.validateBirthdate(value);
                  },
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              Container(
                height: 52.h,
                decoration: ShapeDecoration(
                  color: state.colorForCitizenshipField,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                  ),
                ),
                child: TextFormField(
                  key: const ValueKey('citizenship'),
                  style: bookInTypography.textField,
                  cursorHeight: 20.h,
                  cursorColor: bookInPalette.highlightedColor,
                  keyboardType: TextInputType.name,
                  focusNode: _citizenshipFocusNode,
                  textInputAction: TextInputAction.next,
                  inputFormatters: [
                    FilteringTextInputFormatter.deny(
                      RegExp(r'[\d=+-;,.<>~\@|"!?\]\[{]'),
                    ),
                  ],
                  decoration: InputDecoration(
                    labelText: localizations.labelTextForCitizenship,
                    labelStyle: bookInTypography.hint,
                    border: InputBorder.none,
                    errorBorder: InputBorder.none,
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 10,
                    ),
                  ),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  onFieldSubmitted: (_) =>
                      focusScope.requestFocus(_passportNumberFocusNode),
                  onTapOutside: (_) => focusScope.unfocus(),
                  onChanged: (value) {
                    widget.formCubit.validateCitizenship(value);
                  },
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              Container(
                height: 52.h,
                decoration: ShapeDecoration(
                  color: state.colorForPassportNumberField,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                  ),
                ),
                child: TextFormField(
                  key: const ValueKey('passportNubmer'),
                  style: bookInTypography.textField,
                  cursorHeight: 20.h,
                  cursorColor: bookInPalette.highlightedColor,
                  keyboardType: TextInputType.name,
                  textInputAction: TextInputAction.next,
                  focusNode: _passportNumberFocusNode,
                  decoration: InputDecoration(
                    labelText: localizations.labelForPassportNubmer,
                    labelStyle: bookInTypography.hint,
                    border: InputBorder.none,
                    errorBorder: InputBorder.none,
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 10,
                    ),
                  ),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  onFieldSubmitted: (_) =>
                      focusScope.requestFocus(_passportEndsDateFocusNode),
                  onTapOutside: (_) => focusScope.unfocus(),
                  onChanged: (value) {
                    widget.formCubit.validatePassportNubmer(value);
                  },
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              Container(
                height: 52.h,
                decoration: ShapeDecoration(
                  color: state.colorForPassportEndsDateField,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                  ),
                ),
                child: TextFormField(
                  key: const ValueKey('passportEndsDate'),
                  style: bookInTypography.textField,
                  cursorHeight: 20.h,
                  cursorColor: bookInPalette.highlightedColor,
                  keyboardType: TextInputType.datetime,
                  focusNode: _passportEndsDateFocusNode,
                  inputFormatters: [
                    passportEndsDateMask,
                  ],
                  decoration: InputDecoration(
                    labelText: localizations.labelForPassportNubmer,
                    labelStyle: bookInTypography.hint,
                    hintText: localizations.hintTextForPassportEndsDate,
                    hintStyle: bookInTypography.hint,
                    border: InputBorder.none,
                    errorBorder: InputBorder.none,
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 10,
                    ),
                  ),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  onFieldSubmitted: (_) => focusScope.unfocus(),
                  onTapOutside: (_) => focusScope.unfocus(),
                  onChanged: (value) {
                    widget.formCubit.validatePassportEndsDate(value);
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

extension on int {
  String get comparison {
    switch (this) {
      case (1):
        return 'Первый турист';
      case (2):
        return 'Второй турист';
      case (3):
        return 'Третий турист';
      case (4):
        return 'Четвертый турист';
      default:
        return 'Слишком много туристов';
    }
  }
}
