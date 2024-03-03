import 'package:flutter/material.dart';
import 'package:hotel_app_for_sobes/config/theme/book_in_colors.dart';

//TODO add height paramets to fonts
class BookInTypography extends ThemeExtension<BookInTypography> {
  const BookInTypography({
    required this.headline1,
    required this.headline2,
    required this.headline3,
    required this.title1,
    required this.subtitle1,
    required this.subtitle2,
    required this.label1,
    required this.label2,
    required this.label3,
    required this.hint,
    required this.location,
    required this.textField,
  });

  final TextStyle headline1; // style for appbar
  final TextStyle headline2; // style for trip cost
  final TextStyle headline3; // style for text on buttons
  final TextStyle title1; // style for name of hotel + titles of book section
  final TextStyle subtitle1; // stlye for info with grey color
  final TextStyle subtitle2; // stlye for info with black color
  final TextStyle label1; // style for peculiarities
  final TextStyle label2; // style for benefits
  final TextStyle label3; // style for most necessary benefits
  final TextStyle hint; // style for hint text in textfield
  final TextStyle location; // style for location info
  final TextStyle textField; // style for TextFields

  @override
  BookInTypography copyWith({
    TextStyle? headline1,
    TextStyle? headline2,
    TextStyle? headline3,
    TextStyle? title1,
    TextStyle? subtitle1,
    TextStyle? subtitle2,
    TextStyle? label1,
    TextStyle? label2,
    TextStyle? label3,
    TextStyle? hint,
    TextStyle? location,
    TextStyle? textField,
  }) {
    return BookInTypography(
      headline1: headline1 ?? this.headline1,
      headline2: headline2 ?? this.headline2,
      headline3: headline3 ?? this.headline3,
      title1: title1 ?? this.title1,
      subtitle1: subtitle1 ?? this.subtitle1,
      subtitle2: subtitle2 ?? this.subtitle2,
      label1: label1 ?? this.label1,
      label2: label2 ?? this.label2,
      label3: label3 ?? this.label3,
      hint: hint ?? this.hint,
      location: location ?? this.location,
      textField: textField ?? this.textField,
    );
  }

  @override
  BookInTypography lerp(
    //TODO maybe its not work, need to add ThemeExtension back
    covariant BookInTypography? other,
    double t,
  ) {
    return BookInTypography(
      headline1: TextStyle.lerp(headline1, other?.headline1, t)!,
      headline2: TextStyle.lerp(headline2, other?.headline2, t)!,
      headline3: TextStyle.lerp(headline3, other?.headline3, t)!,
      title1: TextStyle.lerp(title1, other?.title1, t)!,
      subtitle1: TextStyle.lerp(subtitle1, other?.subtitle1, t)!,
      subtitle2: TextStyle.lerp(subtitle2, other?.subtitle2, t)!,
      label1: TextStyle.lerp(label1, other?.label1, t)!,
      label2: TextStyle.lerp(label2, other?.label2, t)!,
      label3: TextStyle.lerp(label3, other?.label3, t)!,
      hint: TextStyle.lerp(hint, other?.hint, t)!,
      location: TextStyle.lerp(location, other?.location, t)!,
      textField: TextStyle.lerp(textField, other?.textField, t)!,
    );
  }

  static get light => const BookInTypography(
        headline1: TextStyle(
          color: BookInColors.lightModeFontPrimaryColor,
          fontWeight: FontWeight.w500,
          fontSize: 18,
        ),
        headline2: TextStyle(
          color: BookInColors.lightModeFontPrimaryColor,
          fontWeight: FontWeight.w600,
          fontSize: 30,
          height: 0.04,
        ),
        headline3: TextStyle(
          color: BookInColors.backgroundColor,
          fontWeight: FontWeight.w500,
          fontSize: 16,
          letterSpacing: 0.1,
        ),
        title1: TextStyle(
          color: BookInColors.lightModeFontPrimaryColor,
          fontWeight: FontWeight.w500,
          fontSize: 22,
        ),
        subtitle1: TextStyle(
          color: BookInColors.lightModeFontSecondaryColor,
          fontWeight: FontWeight.w400,
          fontSize: 16,
        ),
        subtitle2: TextStyle(
          color: BookInColors.lightModeFontPrimaryColor,
          fontWeight: FontWeight.w400,
          fontSize: 16,
        ),
        label1: TextStyle(
          color: BookInColors.lightModeFontSecondaryColor,
          fontWeight: FontWeight.w500,
          fontSize: 16,
        ),
        label2: TextStyle(
          color: BookInColors.foregroundSecondaryColor,
          fontWeight: FontWeight.w500,
          fontSize: 16,
        ),
        label3: TextStyle(
          color: BookInColors.lightModeFontSecondaryColor,
          fontWeight: FontWeight.w500,
          fontSize: 14,
        ),
        hint: TextStyle(
          color: BookInColors.lightModeFontHintColor,
          fontWeight: FontWeight.w400,
          fontSize: 17,
        ),
        location: TextStyle(
          color: BookInColors.highlightedColor,
          fontWeight: FontWeight.w500,
          fontSize: 14,
        ),
        textField: TextStyle(
          color: BookInColors.lightModeFontTextFieldColor,
          //TODO check on screen, if this affect - add all over file
          // fontFamily: 'SF Pro Display',
          fontWeight: FontWeight.w400,
          fontSize: 16,
          letterSpacing: 0.75,
        ),
      );
}
