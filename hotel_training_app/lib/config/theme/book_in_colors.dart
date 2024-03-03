import 'package:flutter/material.dart';

abstract class BookInColors {
  const BookInColors._();

  static const lightModeFontPrimaryColor = Color(0xFF000000);
  static const lightModeFontSecondaryColor = Color(0xFF828796);
  static const lightModeFontHintColor = Color(0xFFA9ABB7);
  static const lightModeFontTextFieldColor = Color(0xFF14142B);

  static const highlightedColor = Color(0xFF0D72FF);
  static const highlightedDisabledColor = Color.fromRGBO(13, 114, 255, 0.1);

  static const secondaryHighlightedColor = Color(0xFFFFA800);
  static const secondaryHighlightedDisabledColor =
      Color.fromRGBO(255, 199, 0, 0.2);

  static const backgroundColor = Colors.white;
  static const backgroundSecondaryColor = Color(0xFFFBFBFC);
  static const foregroundColor = Color(0xFF1E1E1E);
  static const foregroundSecondaryColor = Color(0xFF2C3035);
  static const fieldColor = Color(0xFFF6F6F9);
  static const dividerColor = Color.fromRGBO(130, 135, 150, 0.15);
  static const dividerColorSecondary = Color(0xFFE8E9EC);
  static const errorColor = Color.fromRGBO(235, 87, 87, 0.15);
}
