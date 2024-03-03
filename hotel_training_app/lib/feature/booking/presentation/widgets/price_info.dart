import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:hotel_app_for_sobes/config/theme/book_in_palette.dart';
import 'package:hotel_app_for_sobes/config/theme/book_in_typography.dart';
import 'package:hotel_app_for_sobes/feature/booking/presentation/cubit/reservation/reservation_cubit.dart';

class PriceInfo extends StatelessWidget {
  const PriceInfo({
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
            rowName: localizations.tour,
            infoFromReservation: reservation.tourPrice.toString(),
            textStyle: bookInTypography.subtitle1,
          ),
          const SizedBox(
            height: 16,
          ),
          _customRow(
            rowName: localizations.fuelFee,
            infoFromReservation: reservation.fuelCharge.toString(),
            textStyle: bookInTypography.subtitle1,
          ),
          const SizedBox(
            height: 16,
          ),
          _customRow(
            rowName: localizations.serviceFee,
            infoFromReservation: reservation.serviceCharge.toString(),
            textStyle: bookInTypography.subtitle1,
          ),
          const SizedBox(
            height: 16,
          ),
          _customRow(
            rowName: localizations.toBePaid,
            infoFromReservation: reservation.totalCost.toString(),
            textStyle: bookInTypography.location.copyWith(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }

  Row _customRow({
    required TextStyle textStyle,
    required String rowName,
    required String infoFromReservation,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      children: [
        SizedBox(
          width: 125.w,
          child: Text(
            rowName,
            style: textStyle,
          ),
        ),
        const Spacer(),
        Expanded(
          child: Text(
            '$infoFromReservation ₽',
            textAlign: TextAlign.right,
            style: textStyle,
          ),
        ),
      ],
    );
  }
}
