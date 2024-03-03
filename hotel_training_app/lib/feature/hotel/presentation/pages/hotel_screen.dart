import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:hotel_app_for_sobes/config/theme/theme_extensions.dart';
import 'package:hotel_app_for_sobes/di/injection_container.dart';
import 'package:hotel_app_for_sobes/feature/hotel/presentation/cubit/hotels_cubit.dart';
import 'package:hotel_app_for_sobes/feature/hotel/presentation/widgets/hotel_body.dart';
import 'package:hotel_app_for_sobes/feature/network_connection/widgets/network_connection_listener.dart';

@RoutePage()
class HotelScreen extends StatelessWidget {
  const HotelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bookInPaletter = context.palette;

    return BlocProvider<HotelsCubit>(
      create: (_) => sl()..init(),
      child: NetworkConnectionListener(
        child: Scaffold(
          backgroundColor: bookInPaletter.fieldColor,
          body: const HotelBody(),
        ),
      ),
    );
  }
}
