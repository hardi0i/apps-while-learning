import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotel_app_for_sobes/config/theme/book_in_colors.dart';
import 'package:hotel_app_for_sobes/config/theme/book_in_palette.dart';
import 'package:hotel_app_for_sobes/config/theme/book_in_typography.dart';

class ThemeCubit extends Cubit<ThemeData> {
  ThemeCubit() : super(_kLightTheme);

  //Light theme

  static final _kLightTheme = ThemeData.light().copyWith(
    brightness: Brightness.light,
    splashColor: Colors.transparent,
    splashFactory: InkRipple.splashFactory,
    iconTheme: const IconThemeData(
      color: BookInColors.foregroundSecondaryColor,
    ),
    primaryIconTheme: const IconThemeData(
      color: BookInColors.foregroundSecondaryColor,
    ),
    extensions: <ThemeExtension<dynamic>>[
      BookInTypography.light,
      BookInPalette.light,
    ],
  );

/*
  //Dark theme
  brightness: Brightness.light,
    iconTheme: const IconThemeData(
      color: BookInColors.foregroundSecondaryColor,
    ),
    primaryIconTheme: const IconThemeData(
      color: BookInColors.foregroundSecondaryColor,
    ),
    extensions: <ThemeExtension<dynamic>>[
      BookInTypography.light,
      BookInPalette.light,
    ],
   );

  /// Toggle between light and dark theme
  void toggleTheme() {
    emit(state.brightness == Brightness.dark ? _kLightTheme : _kDarkTheme);
  }
*/
}
