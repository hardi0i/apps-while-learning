import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hotel_app_for_sobes/config/theme/book_in_palette.dart';
import 'package:hotel_app_for_sobes/config/theme/book_in_typography.dart';
import 'package:hotel_app_for_sobes/feature/hotel/domain/entities/hotel.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class DescriptionAboutHotel extends StatelessWidget {
  const DescriptionAboutHotel({
    super.key,
    required this.bookInPalette,
    required this.bookInTypography,
    required this.hotel,
  });

  final BookInTypography bookInTypography;
  final BookInPalette bookInPalette;
  final HotelEntity hotel;

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 16,
      ),
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            localizations.aboutTheHotel,
            textAlign: TextAlign.center,
            style: bookInTypography.title1,
          ),
          SizedBox(
            height: 16.h,
          ),
          Wrap(
            runSpacing: 8,
            spacing: 8,
            children: hotel.aboutTheHotel.peculiarities
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
          SizedBox(
            height: 12.h,
          ),
          Text(
            hotel.aboutTheHotel.description,
            textAlign: TextAlign.start,
            style: bookInTypography.subtitle2,
          ),
          SizedBox(
            height: 16.h,
          ),
          Container(
            padding: const EdgeInsets.all(
              15,
            ),
            decoration: ShapeDecoration(
              color: bookInPalette.backgroundSecondaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  15,
                ),
              ),
            ),
            child: Column(
              children: [
                _customTile(
                  localizations: localizations,
                  svgUrl: 'assets/svg/icons/emoji-happy.svg',
                  title: localizations.conveniences,
                  onTaped: () {},
                ),
                Divider(
                  color: bookInPalette.dividerColor,
                  indent: 38,
                  thickness: 1,
                ),
                _customTile(
                  localizations: localizations,
                  svgUrl: 'assets/svg/icons/tick-square.svg',
                  title: localizations.whatIsIncluded,
                  onTaped: () {},
                ),
                Divider(
                  color: bookInPalette.dividerColor,
                  indent: 38,
                  thickness: 1,
                ),
                _customTile(
                  localizations: localizations,
                  svgUrl: 'assets/svg/icons/close-square.svg',
                  title: localizations.whatIsIncluded,
                  onTaped: () {},
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  ListTile _customTile({
    required AppLocalizations localizations,
    required String svgUrl,
    required String title,
    required VoidCallback onTaped,
  }) {
    return ListTile(
      dense: true,
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 0.0,
      ),
      leading: SvgPicture.asset(
        svgUrl,
      ),
      title: Text(
        title,
        textAlign: TextAlign.start,
        style: bookInTypography.label2,
      ),
      subtitle: Text(
        localizations.mostNecessary,
        textAlign: TextAlign.start,
        style: bookInTypography.label3,
      ),
      trailing: Icon(
        Icons.arrow_forward_ios_outlined,
        color: bookInPalette.foregroundSecondaryColor,
        weight: 2,
        size: 20,
      ),
      visualDensity: const VisualDensity(
        vertical: -2,
      ),
      onTap: () => onTaped(),
    );
  }
}
