import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotel_app_for_sobes/config/routes/routes.dart';
import 'package:hotel_app_for_sobes/config/theme/book_in_palette.dart';
import 'package:hotel_app_for_sobes/config/theme/book_in_typography.dart';
import 'package:hotel_app_for_sobes/config/theme/theme_extensions.dart';
import 'package:hotel_app_for_sobes/feature/booking/presentation/cubit/phone_and_email/phone_and_email_cubit.dart';
import 'package:hotel_app_for_sobes/feature/booking/presentation/cubit/reservation/reservation_cubit.dart';
import 'package:hotel_app_for_sobes/feature/booking/presentation/widgets/client_info_text_fields.dart';
import 'package:hotel_app_for_sobes/feature/booking/presentation/widgets/main_info_about_trip.dart';
import 'package:hotel_app_for_sobes/feature/booking/presentation/widgets/price_info.dart';
import 'package:hotel_app_for_sobes/feature/booking/presentation/widgets/tourist_info_tile.dart';
import 'package:hotel_app_for_sobes/feature/booking/presentation/cubit/form/form_cubit.dart';
import 'package:hotel_app_for_sobes/feature/booking/presentation/cubit/multi_form/form_manager_cubit.dart';
import 'package:hotel_app_for_sobes/feature/booking/presentation/cubit/multi_form/form_manager_cubit_state.dart';
import 'package:hotel_app_for_sobes/feature/widgets/button.dart';
import 'package:hotel_app_for_sobes/feature/widgets/hotel_name_adress_cost.dart';

class ReservationLoadedView extends StatefulWidget {
  const ReservationLoadedView({super.key});

  @override
  State<ReservationLoadedView> createState() => _ReservationLoadedViewState();
}

class _ReservationLoadedViewState extends State<ReservationLoadedView> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final reservation = context.select(
      (ReservationCubit cubit) => cubit.state.reservation.first,
    );

    final localizations = AppLocalizations.of(context)!;

    final bookInTypography = context.typography;
    final bookInPalette = context.palette;

    return CustomScrollView(
      slivers: [
        _appBar(
          localizations: localizations,
          bookInPalette: bookInPalette,
          bookInTypography: bookInTypography,
        ),
        Form(
          key: _formKey,
          child: SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  margin: const EdgeInsets.only(
                    top: 8,
                  ),
                  padding: const EdgeInsets.all(
                    16,
                  ),
                  decoration: ShapeDecoration(
                    color: bookInPalette.backgroundColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        15,
                      ),
                    ),
                  ),
                  child: HotelNameAdressCost(
                    hotelName: reservation.hotelName,
                    hotelAdress: reservation.hotelAdress,
                    hotelRating:
                        '${reservation.hotelRating} ${reservation.ratingName}',
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                MainInfoAboutTrip(
                  localizations: localizations,
                  bookInPalette: bookInPalette,
                  bookInTypography: bookInTypography,
                ),
                const SizedBox(
                  height: 8,
                ),
                const ClienInfoTextFields(),
                const SizedBox(
                  height: 8,
                ),
                BlocBuilder<FormManagerCubit, FormManagerCubitState>(
                  builder: (context, state) {
                    return Column(
                      children: [
                        for (int i = 0; i < state.formCubitList.length; i++)
                          BlocProvider<FormCubit>(
                            create: (_) => state.formCubitList[i],
                            // value: state.formCubitList[i],
                            child: TouristInfoTile(
                              placeInListOfTourists: i + 1,
                              formCubit: state.formCubitList[i],
                            ),
                          ),
                      ],
                    );
                  },
                ),
                ListTile(
                  onTap: () => context.read<FormManagerCubit>().addForm(),
                  tileColor: bookInPalette.backgroundColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      6,
                    ),
                  ),
                  leading: Text(
                    localizations.addATourist,
                    textAlign: TextAlign.start,
                    style: bookInTypography.title1,
                  ),
                  trailing: Container(
                    width: 32,
                    height: 32,
                    decoration: ShapeDecoration(
                      color: bookInPalette.highlightedColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          6,
                        ),
                      ),
                    ),
                    child: Icon(
                      Icons.add,
                      weight: 2,
                      color: bookInPalette.backgroundColor,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                PriceInfo(
                  localizations: localizations,
                  bookInPalette: bookInPalette,
                  bookInTypography: bookInTypography,
                ),
                const SizedBox(
                  height: 8,
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
                        title: localizations.payNRub(
                          '${(reservation.totalCost).toString().substring(0, 3)} ${(reservation.totalCost).toString().substring(3, 6)}',
                        ),
                        onPress: () async {
                          bool allFormsValid = true;

                          context.read<PhoneAndEmailCubit>().validatePhone();
                          context.read<PhoneAndEmailCubit>().validateEmail();

                          if (!context
                                  .read<FormManagerCubit>()
                                  .validateAllFields() ||
                              !context
                                  .read<PhoneAndEmailCubit>()
                                  .state
                                  .isEmailValid ||
                              !context
                                  .read<PhoneAndEmailCubit>()
                                  .state
                                  .isPhoneValid) {
                            allFormsValid = false;
                          }

                          if (allFormsValid) {
                            AutoRouter.of(context).pushAndPopUntil(
                              const SuccessfullyPaidReservationRoute(),
                              predicate: (route) =>
                                  route.settings.name == 'HotelRoute',
                            );
                          }
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  SliverAppBar _appBar({
    required AppLocalizations localizations,
    required BookInPalette bookInPalette,
    required BookInTypography bookInTypography,
  }) {
    return SliverAppBar(
      expandedHeight: 30,
      surfaceTintColor: Colors.transparent,
      centerTitle: true,
      pinned: true,
      backgroundColor: bookInPalette.backgroundColor,
      title: Text(
        localizations.booking,
        style: bookInTypography.headline1,
      ),
    );
  }
}
