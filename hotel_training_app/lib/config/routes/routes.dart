import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hotel_app_for_sobes/feature/booking/presentation/pages/reservation_screen.dart';
import 'package:hotel_app_for_sobes/feature/hotel/presentation/pages/hotel_screen.dart';
import 'package:hotel_app_for_sobes/feature/rooms/presentation/pages/rooms_screen.dart';
import 'package:hotel_app_for_sobes/feature/successfully_paid_reservation/presntation/pages/successfully_paid_reservation_screen.dart';

part 'routes.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class BookInRouter extends _$BookInRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: HotelRoute.page,
          path: '/',
        ),
        AutoRoute(
          page: RoomsRoute.page,
          path: '/rooms',
        ),
        AutoRoute(
          page: ReservationRoute.page,
          path: '/reservation',
        ),
        AutoRoute(
            page: SuccessfullyPaidReservationRoute.page,
            path: '/successfully-paid'),
      ];
}
