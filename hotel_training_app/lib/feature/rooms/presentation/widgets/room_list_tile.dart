import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_app_for_sobes/config/theme/theme_extensions.dart';
import 'package:hotel_app_for_sobes/feature/rooms/domain/entities/room.dart';
import 'package:hotel_app_for_sobes/feature/widgets/button.dart';
import 'package:hotel_app_for_sobes/feature/widgets/custom_slider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class RoomListTile extends StatelessWidget {
  const RoomListTile({
    super.key,
    required this.room,
  });

  final RoomEntity room;

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;

    final bookInTypography = context.typography;
    final bookInPalette = context.palette;

    return Container(
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.all(
        16.0,
      ),
      margin: const EdgeInsets.only(
        top: 8.0,
      ),
      decoration: ShapeDecoration(
        color: bookInPalette.backgroundColor,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(
              30,
            ),
          ),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSlider(
            list: room.imageUrls,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            room.name,
            textAlign: TextAlign.start,
            style: bookInTypography.title1,
          ),
          const SizedBox(
            height: 8,
          ),
          Wrap(
            runSpacing: 8,
            spacing: 8,
            children: room.peculiarities
                .map(
                  (peculiartie) => Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 5,
                    ),
                    decoration: ShapeDecoration(
                      color: bookInPalette.backgroundSecondaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          5,
                        ),
                      ),
                    ),
                    child: Text(
                      peculiartie,
                      textAlign: TextAlign.start,
                      style: bookInTypography.label1,
                    ),
                  ),
                )
                .toList(),
          ),
          const SizedBox(
            height: 8,
          ),
          Container(
            height: 29.h,
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 5,
            ),
            decoration: ShapeDecoration(
              color: bookInPalette.highlightedDisabledColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  5,
                ),
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  localizations.moreAboutTheRoom,
                  textAlign: TextAlign.center,
                  style: bookInTypography.location.copyWith(
                    fontSize: 16,
                    height: 0.07,
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: bookInPalette.highlightedColor,
                  weight: 2,
                  size: 12.h,
                )
              ],
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '${(room.price).toString().substring(0, 3)} ${(room.price).toString().substring(3, 6)} ₽',
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
                    room.pricePer,
                    textAlign: TextAlign.start,
                    style: bookInTypography.subtitle1,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Button(
            title: localizations.chooseANumber,
            onPress: () => AutoRouter.of(context).pushNamed('/reservation'),
            bookInPalette: bookInPalette,
            bookInTypography: bookInTypography,
          ),
        ],
      ),
    );
  }
}
