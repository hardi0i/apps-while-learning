import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:hotel_app_for_sobes/config/theme/theme_extensions.dart';
import 'package:hotel_app_for_sobes/di/injection_container.dart';
import 'package:hotel_app_for_sobes/feature/booking/presentation/cubit/reservation/reservation_cubit.dart';
import 'package:hotel_app_for_sobes/feature/booking/presentation/widgets/order_failures_listener.dart';
import 'package:hotel_app_for_sobes/feature/booking/presentation/widgets/reservation_body.dart';
import 'package:hotel_app_for_sobes/feature/booking/presentation/cubit/multi_form/form_manager_cubit.dart';
import 'package:hotel_app_for_sobes/feature/booking/presentation/cubit/phone_and_email/phone_and_email_cubit.dart';

@RoutePage()
class ReservationScreen extends StatelessWidget {
  const ReservationScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final bookInPalette = context.palette;

    return MultiBlocProvider(
      providers: [
        BlocProvider<ReservationCubit>(
          create: (_) => sl()..init(),
        ),
        BlocProvider<FormManagerCubit>(
          create: (_) => sl()..init(),
        ),
        BlocProvider<PhoneAndEmailCubit>(
          create: (_) => sl(),
        ),
      ],
      child: Scaffold(
        backgroundColor: bookInPalette.fieldColor,
        body: const OrderFailuresListener(
          child: ReservationBody(),
        ),
      ),
    );
  }
}
