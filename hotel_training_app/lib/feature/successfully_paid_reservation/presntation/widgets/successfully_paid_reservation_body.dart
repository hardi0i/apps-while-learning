import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:hotel_app_for_sobes/config/theme/theme_extensions.dart';
import 'package:hotel_app_for_sobes/feature/widgets/button.dart';

class SuccessfullyPaidReservationBody extends StatelessWidget {
  const SuccessfullyPaidReservationBody({super.key});

  @override
  Widget build(BuildContext context) {
    final bookInPalette = context.palette;
    final bookInTypography = context.typography;

    final localizations = AppLocalizations.of(context)!;

    final rnd = Random();
    double sixDigitsNumber = rnd.nextDouble() * 1000000;
    while (sixDigitsNumber < 100000) {
      sixDigitsNumber *= 10;
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Spacer(),
        CircleAvatar(
          backgroundColor: bookInPalette.fieldColor,
          minRadius: 47,
          maxRadius: 47,
          child: Image.asset(
            'assets/images/party-popper.png',
            height: 44,
          ),
        ),
        const SizedBox(
          height: 32,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
          ),
          child: Text(
            localizations.yourOrderHasBeenAccepted,
            textAlign: TextAlign.center,
            style: bookInTypography.title1,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
          ),
          child: Text(
            localizations.orderConfirmationInformation(
              (sixDigitsNumber).toStringAsFixed(0),
            ),
            textAlign: TextAlign.center,
            style: bookInTypography.subtitle1,
          ),
        ),
        const Spacer(),
        Container(
          height: 80,
          padding: const EdgeInsets.symmetric(
            horizontal: 25,
          ),
          decoration: ShapeDecoration(
            color: bookInPalette.backgroundColor,
            shape: RoundedRectangleBorder(
              side: BorderSide(
                width: 1,
                strokeAlign: BorderSide.strokeAlignOutside,
                color: bookInPalette.dividerColorSecondary,
              ),
            ),
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 12,
              ),
              Button(
                bookInPalette: bookInPalette,
                bookInTypography: bookInTypography,
                title: localizations.great,
                onPress: () {
                  AutoRouter.of(context).pop();
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
