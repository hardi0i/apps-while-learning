import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_app_for_sobes/config/theme/book_in_palette.dart';
import 'package:hotel_app_for_sobes/config/theme/book_in_typography.dart';

class Button extends StatelessWidget {
  const Button({
    super.key,
    required this.bookInPalette,
    required this.bookInTypography,
    required this.title,
    required this.onPress,
  });

  final BookInPalette bookInPalette;
  final BookInTypography bookInTypography;
  final String title;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => onPress(),
      style: ButtonStyle(
        elevation: MaterialStateProperty.resolveWith(
          (states) => 0,
        ),
        backgroundColor: MaterialStateProperty.resolveWith(
          (states) => bookInPalette.highlightedColor,
        ),
        shape: MaterialStateProperty.resolveWith(
          (states) => RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              15,
            ),
          ),
        ),
        fixedSize: MaterialStateProperty.resolveWith(
          (states) => Size(
            343.w,
            50,
          ),
        ),
      ),
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: bookInTypography.headline3,
      ),
    );
  }
}
