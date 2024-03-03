import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotel_app_for_sobes/config/theme/theme_extensions.dart';
// import 'package:hotel_app_for_sobes/feature/order/presentation/cubit/order_cubit.dart';
// import 'package:hotel_app_for_sobes/feature/order/presentation/cubit/order_cubit_state.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:hotel_app_for_sobes/feature/booking/presentation/cubit/multi_form/form_manager_cubit.dart';
import 'package:hotel_app_for_sobes/feature/booking/presentation/cubit/multi_form/form_manager_cubit_state.dart';

class OrderFailuresListener extends StatelessWidget {
  const OrderFailuresListener({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;

    return BlocListener<FormManagerCubit, FormManagerCubitState>(
      listenWhen: (previous, current) => previous.status != current.status,
      listener: (context, state) {
        state.status.whenOrNull(
          invalid: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                margin: const EdgeInsets.fromLTRB(
                  16,
                  0,
                  16,
                  5,
                ),
                elevation: 0,
                behavior: SnackBarBehavior.floating,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    8,
                  ),
                ),
                content: Text(
                  localizations.maximumNumberOfTouristsForReservation,
                  style: context.typography.location,
                ),
                backgroundColor: context.palette.fieldColor,
              ),
            );
          },
        );
      },
      child: child,
    );
  }
}
