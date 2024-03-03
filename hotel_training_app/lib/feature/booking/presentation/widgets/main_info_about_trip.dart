import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:hotel_app_for_sobes/config/theme/book_in_palette.dart';
import 'package:hotel_app_for_sobes/config/theme/book_in_typography.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:hotel_app_for_sobes/feature/booking/presentation/cubit/reservation/reservation_cubit.dart';

class MainInfoAboutTrip extends StatelessWidget {
  const MainInfoAboutTrip({
    super.key,
    required this.localizations,
    required this.bookInTypography,
    required this.bookInPalette,
  });

  final AppLocalizations localizations;
  final BookInTypography bookInTypography;
  final BookInPalette bookInPalette;

  @override
  Widget build(BuildContext context) {
    final reservation = context.select(
      (ReservationCubit cubit) => cubit.state.reservation.first,
    );

    return Container(
      padding: const EdgeInsets.all(
        16,
      ),
      decoration: ShapeDecoration(
        color: bookInPalette.backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            12,
          ),
        ),
      ),
      child: Column(
        children: [
          _customRow(
            bookInTypography: bookInTypography,
            rowName: localizations.departureFrom,
            infoFromReservation: reservation.departure,
          ),
          const SizedBox(
            height: 16,
          ),
          _customRow(
            bookInTypography: bookInTypography,
            rowName: localizations.countryCity,
            infoFromReservation: reservation.arrivalCountry,
          ),
          const SizedBox(
            height: 16,
          ),
          _customRow(
            bookInTypography: bookInTypography,
            rowName: localizations.dates,
            infoFromReservation:
                '${reservation.tourDateStart}-${reservation.tourDateStop}',
          ),
          const SizedBox(
            height: 16,
          ),
          _customRow(
            bookInTypography: bookInTypography,
            rowName: localizations.numberOfNights,
            infoFromReservation: reservation.numberOfNights.toString(),
          ),
          const SizedBox(
            height: 16,
          ),
          _customRow(
            bookInTypography: bookInTypography,
            rowName: localizations.hotel,
            infoFromReservation: reservation.hotelName,
          ),
          const SizedBox(
            height: 16,
          ),
          _customRow(
            bookInTypography: bookInTypography,
            rowName: localizations.room,
            infoFromReservation: reservation.room,
          ),
          const SizedBox(
            height: 16,
          ),
          _customRow(
            bookInTypography: bookInTypography,
            rowName: localizations.nutrition,
            infoFromReservation: reservation.nutrition,
          ),
        ],
      ),
    );
  }

  Row _customRow({
    required BookInTypography bookInTypography,
    required String rowName,
    required String infoFromReservation,
    String? additionalInfo,
  }) {
    return Row(
      children: [
        SizedBox(
          width: 125.w,
          child: Text(
            rowName,
            style: bookInTypography.subtitle1,
          ),
        ),
        Expanded(
          child: Text(
            infoFromReservation,
            style: bookInTypography.subtitle2,
          ),
        ),
        if (additionalInfo != null)
          Text(
            infoFromReservation,
            style: bookInTypography.subtitle2,
          ),
      ],
    );
  }
}
