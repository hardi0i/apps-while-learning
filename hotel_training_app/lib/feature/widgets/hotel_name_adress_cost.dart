import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:hotel_app_for_sobes/config/theme/theme_extensions.dart';

class HotelNameAdressCost extends StatelessWidget {
  const HotelNameAdressCost({
    super.key,
    required this.hotelName,
    required this.hotelAdress,
    required this.hotelRating,
  });

  final String hotelName;
  final String hotelAdress;
  final String hotelRating;

  @override
  Widget build(BuildContext context) {
    final bookInTypography = context.typography;
    final bookInPalette = context.palette;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 29.h,
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 5,
          ),
          decoration: ShapeDecoration(
            color: bookInPalette.secondaryHighlightedDisabledColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                5,
              ),
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.star,
                size: 15,
                color: bookInPalette.secondaryHighlightedColor,
              ),
              Text(
                hotelRating,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: bookInPalette.secondaryHighlightedColor,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  height: 0.07,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 8.h,
        ),
        Text(
          hotelName,
          textAlign: TextAlign.start,
          style: bookInTypography.title1,
        ),
        SizedBox(
          height: 8.h,
        ),
        GestureDetector(
          onTap: () {},
          child: Text(
            hotelAdress,
            textAlign: TextAlign.start,
            style: bookInTypography.location,
          ),
        ),
      ],
    );
  }
}
