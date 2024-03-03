import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:hotel_app_for_sobes/config/theme/theme_extensions.dart';
import 'package:hotel_app_for_sobes/feature/hotel/domain/entities/hotel.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:hotel_app_for_sobes/feature/widgets/custom_slider.dart';
import 'package:hotel_app_for_sobes/feature/widgets/hotel_name_adress_cost.dart';

class HotelMainInfo extends StatelessWidget {
  const HotelMainInfo({
    super.key,
    required this.hotel,
  });

  final HotelEntity hotel;

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;

    final bookInTypography = context.typography;
    final bookInPalette = context.palette;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(
        16.0,
      ),
      decoration: ShapeDecoration(
        color: bookInPalette.backgroundColor,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(
              12,
            ),
            bottomRight: Radius.circular(
              12,
            ),
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSlider(
            list: hotel.imageUrls,
          ),
          const SizedBox(
            height: 16,
          ),
          HotelNameAdressCost(
            hotelName: hotel.name,
            hotelAdress: hotel.adress,
            hotelRating: '${hotel.rating} ${hotel.ratingName}',
          ),
          SizedBox(
            height: 16.h,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                localizations.fromNRub(
                  '${(hotel.minimalPrice).toString().substring(0, 3)} ${(hotel.minimalPrice).toString().substring(3, 6)}',
                ),
                textAlign: TextAlign.start,
                style: bookInTypography.headline2,
              ),
              SizedBox(
                width: 8.w,
              ),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 5.0,
                  ),
                  child: Text(
                    hotel.priceForIt,
                    textAlign: TextAlign.start,
                    style: bookInTypography.subtitle1,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 16.h,
          ),
        ],
      ),
    );
  }
}
