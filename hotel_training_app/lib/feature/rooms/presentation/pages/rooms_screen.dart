import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotel_app_for_sobes/config/theme/book_in_palette.dart';
import 'package:hotel_app_for_sobes/config/theme/book_in_typography.dart';
import 'package:hotel_app_for_sobes/config/theme/theme_extensions.dart';
import 'package:hotel_app_for_sobes/di/injection_container.dart';
import 'package:hotel_app_for_sobes/feature/rooms/presentation/cubit/rooms_cubit.dart';
import 'package:hotel_app_for_sobes/feature/rooms/presentation/widgets/rooms_body.dart';

@RoutePage()
class RoomsScreen extends StatelessWidget {
  const RoomsScreen({
    super.key,
    required this.hotelName,
  });

  final String hotelName;

  @override
  Widget build(BuildContext context) {
    final bookInTypography = context.typography;
    final bookInPalette = context.palette;

    return BlocProvider<RoomsCubit>(
      create: (_) => sl()..init(),
      child: Scaffold(
        backgroundColor: bookInPalette.backgroundSecondaryColor,
        appBar: _appBar(
          bookInTypography: bookInTypography,
          bookInPalette: bookInPalette,
          hotelName: hotelName,
        ),
        body: const RoomsBody(),
      ),
    );
  }

  AppBar _appBar({
    required BookInTypography bookInTypography,
    required BookInPalette bookInPalette,
    required String hotelName,
  }) {
    return AppBar(
      surfaceTintColor: Colors.transparent,
      backgroundColor: bookInPalette.backgroundColor,
      centerTitle: true,
      title: Text(
        hotelName,
        style: bookInTypography.headline1,
      ),
    );
  }
}
