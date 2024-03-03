import 'package:flutter/material.dart';
import 'package:hotel_app_for_sobes/config/theme/book_in_palette.dart';
import 'package:hotel_app_for_sobes/config/theme/book_in_typography.dart';

extension ThemeBuildContextExtensions on BuildContext {
  BookInPalette get palette {
    final laterPalette = Theme.of(this).extension<BookInPalette>();

    assert(
      laterPalette != null,
      'Tried to find the LaterPalette, but it was not provided as a theme extension',
    );

    return laterPalette!;
  }

  BookInTypography get typography {
    final laterTypography = Theme.of(this).extension<BookInTypography>();

    assert(
      laterTypography != null,
      'Tried to find the LaterTypography, but it was not provided as a theme extension',
    );

    return laterTypography!;
  }
}
