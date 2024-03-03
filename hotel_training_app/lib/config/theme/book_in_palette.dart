import 'package:flutter/material.dart';
import 'package:hotel_app_for_sobes/config/theme/book_in_colors.dart';

class BookInPalette extends ThemeExtension<BookInPalette> {
  const BookInPalette({
    required this.backgroundColor,
    required this.backgroundSecondaryColor,
    required this.foregroundColor,
    required this.foregroundSecondaryColor,
    required this.dividerColor,
    required this.dividerColorSecondary,
    required this.fieldColor,
    required this.highlightedColor,
    required this.highlightedDisabledColor,
    required this.secondaryHighlightedColor,
    required this.secondaryHighlightedDisabledColor,
    required this.errorColor,
  });

  final Color backgroundColor;
  final Color backgroundSecondaryColor;
  final Color foregroundColor;
  final Color foregroundSecondaryColor;
  final Color dividerColor;
  final Color dividerColorSecondary;
  final Color fieldColor;
  final Color highlightedColor;
  final Color highlightedDisabledColor;
  final Color secondaryHighlightedColor;
  final Color secondaryHighlightedDisabledColor;
  final Color errorColor;

  @override
  BookInPalette copyWith({
    Color? backgroundColor,
    Color? backgroundSecondaryColor,
    Color? foregroundColor,
    Color? foregroundSecondaryColor,
    Color? dividerColor,
    Color? dividerColorSecondary,
    Color? fieldColor,
    Color? highlightedColor,
    Color? highlightedDisabledColor,
    Color? secondaryHighlightedColor,
    Color? secondaryHighlightedDisabledColor,
    Color? errorColor,
  }) {
    return BookInPalette(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      backgroundSecondaryColor:
          backgroundSecondaryColor ?? this.backgroundSecondaryColor,
      foregroundColor: foregroundColor ?? this.foregroundColor,
      foregroundSecondaryColor:
          foregroundSecondaryColor ?? this.foregroundSecondaryColor,
      dividerColor: dividerColor ?? this.dividerColor,
      dividerColorSecondary:
          dividerColorSecondary ?? this.dividerColorSecondary,
      fieldColor: fieldColor ?? this.fieldColor,
      highlightedColor: highlightedColor ?? this.highlightedColor,
      highlightedDisabledColor:
          highlightedDisabledColor ?? this.highlightedDisabledColor,
      secondaryHighlightedColor:
          secondaryHighlightedColor ?? this.secondaryHighlightedColor,
      secondaryHighlightedDisabledColor: secondaryHighlightedDisabledColor ??
          this.secondaryHighlightedDisabledColor,
      errorColor: errorColor ?? this.errorColor,
    );
  }

  @override
  BookInPalette lerp(covariant BookInPalette? other, double t) {
    return BookInPalette(
      backgroundColor: Color.lerp(backgroundColor, other?.backgroundColor, t)!,
      backgroundSecondaryColor: Color.lerp(
          backgroundSecondaryColor, other?.backgroundSecondaryColor, t)!,
      foregroundColor: Color.lerp(foregroundColor, other?.foregroundColor, t)!,
      foregroundSecondaryColor: Color.lerp(
          foregroundSecondaryColor, other?.foregroundSecondaryColor, t)!,
      dividerColor: Color.lerp(dividerColor, other?.dividerColor, t)!,
      dividerColorSecondary:
          Color.lerp(dividerColorSecondary, other?.dividerColorSecondary, t)!,
      fieldColor: Color.lerp(fieldColor, other?.fieldColor, t)!,
      highlightedColor:
          Color.lerp(highlightedColor, other?.highlightedColor, t)!,
      highlightedDisabledColor: Color.lerp(
          highlightedDisabledColor, other?.highlightedDisabledColor, t)!,
      secondaryHighlightedColor: Color.lerp(
          secondaryHighlightedColor, other?.secondaryHighlightedColor, t)!,
      secondaryHighlightedDisabledColor: Color.lerp(
          secondaryHighlightedDisabledColor,
          other?.secondaryHighlightedDisabledColor,
          t)!,
      errorColor: Color.lerp(errorColor, other?.errorColor, t)!,
    );
  }

  static get light => const BookInPalette(
        backgroundColor: BookInColors.backgroundColor,
        backgroundSecondaryColor: BookInColors.backgroundSecondaryColor,
        foregroundColor: BookInColors.foregroundColor,
        foregroundSecondaryColor: BookInColors.foregroundSecondaryColor,
        dividerColor: BookInColors.dividerColor,
        dividerColorSecondary: BookInColors.dividerColorSecondary,
        fieldColor: BookInColors.fieldColor,
        highlightedColor: BookInColors.highlightedColor,
        highlightedDisabledColor: BookInColors.highlightedDisabledColor,
        secondaryHighlightedColor: BookInColors.secondaryHighlightedColor,
        secondaryHighlightedDisabledColor:
            BookInColors.secondaryHighlightedDisabledColor,
        errorColor: BookInColors.errorColor,
      );
}
