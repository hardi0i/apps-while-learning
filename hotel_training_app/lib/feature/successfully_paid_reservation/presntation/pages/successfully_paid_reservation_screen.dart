import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:hotel_app_for_sobes/config/theme/theme_extensions.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:hotel_app_for_sobes/feature/successfully_paid_reservation/presntation/widgets/successfully_paid_reservation_body.dart';

@RoutePage()
class SuccessfullyPaidReservationScreen extends StatelessWidget {
  const SuccessfullyPaidReservationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bookInTypography = context.typography;

    final localizations = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          localizations.orderHasBeenPaid,
          style: bookInTypography.headline1,
        ),
      ),
      body: const SuccessfullyPaidReservationBody(),
    );
  }
}
