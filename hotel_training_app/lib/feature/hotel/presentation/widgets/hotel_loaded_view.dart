import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_app_for_sobes/config/routes/routes.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:hotel_app_for_sobes/config/theme/book_in_palette.dart';
import 'package:hotel_app_for_sobes/config/theme/book_in_typography.dart';
import 'package:hotel_app_for_sobes/config/theme/theme_extensions.dart';
import 'package:hotel_app_for_sobes/feature/hotel/presentation/cubit/hotels_cubit.dart';
import 'package:hotel_app_for_sobes/feature/hotel/presentation/widgets/description_about_hotel.dart';
import 'package:hotel_app_for_sobes/feature/hotel/presentation/widgets/hotel_main_info.dart';
import 'package:hotel_app_for_sobes/feature/widgets/button.dart';

class HotelLoadedView extends StatelessWidget {
  const HotelLoadedView({super.key});

  @override
  Widget build(BuildContext context) {
    final hotel =
        context.select((HotelsCubit cubit) => cubit.state.hotels.first);

    final localizations = AppLocalizations.of(context)!;

    final bookInTypography = context.typography;
    final bookInPalette = context.palette;

    return CustomScrollView(
      slivers: [
        _appBar(
          localizations,
          bookInPalette,
          bookInTypography,
        ),
        SliverList(
          delegate: SliverChildListDelegate(
            [
              HotelMainInfo(
                hotel: hotel,
              ),
              const SizedBox(
                height: 10,
              ),
              DescriptionAboutHotel(
                bookInPalette: bookInPalette,
                bookInTypography: bookInTypography,
                hotel: hotel,
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                height: 88,
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
                      title: localizations.toChooseARoom,
                      onPress: () => AutoRouter.of(context).push(
                        RoomsRoute(hotelName: hotel.name),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  SliverAppBar _appBar(
    AppLocalizations localizations,
    BookInPalette bookInPalette,
    BookInTypography bookInTypography,
  ) {
    return SliverAppBar(
      expandedHeight: 30,
      surfaceTintColor: Colors.transparent,
      centerTitle: true,
      pinned: true,
      backgroundColor: bookInPalette.backgroundColor,
      title: Text(
        localizations.hotel,
        style: bookInTypography.headline1,
      ),
    );
  }
}
