// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'routes.dart';

abstract class _$BookInRouter extends RootStackRouter {
  // ignore: unused_element
  _$BookInRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    HotelRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HotelScreen(),
      );
    },
    ReservationRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ReservationScreen(),
      );
    },
    RoomsRoute.name: (routeData) {
      final args = routeData.argsAs<RoomsRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: RoomsScreen(
          key: args.key,
          hotelName: args.hotelName,
        ),
      );
    },
    SuccessfullyPaidReservationRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SuccessfullyPaidReservationScreen(),
      );
    },
  };
}

/// generated route for
/// [HotelScreen]
class HotelRoute extends PageRouteInfo<void> {
  const HotelRoute({List<PageRouteInfo>? children})
      : super(
          HotelRoute.name,
          initialChildren: children,
        );

  static const String name = 'HotelRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ReservationScreen]
class ReservationRoute extends PageRouteInfo<void> {
  const ReservationRoute({List<PageRouteInfo>? children})
      : super(
          ReservationRoute.name,
          initialChildren: children,
        );

  static const String name = 'ReservationRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [RoomsScreen]
class RoomsRoute extends PageRouteInfo<RoomsRouteArgs> {
  RoomsRoute({
    Key? key,
    required String hotelName,
    List<PageRouteInfo>? children,
  }) : super(
          RoomsRoute.name,
          args: RoomsRouteArgs(
            key: key,
            hotelName: hotelName,
          ),
          initialChildren: children,
        );

  static const String name = 'RoomsRoute';

  static const PageInfo<RoomsRouteArgs> page = PageInfo<RoomsRouteArgs>(name);
}

class RoomsRouteArgs {
  const RoomsRouteArgs({
    this.key,
    required this.hotelName,
  });

  final Key? key;

  final String hotelName;

  @override
  String toString() {
    return 'RoomsRouteArgs{key: $key, hotelName: $hotelName}';
  }
}

/// generated route for
/// [SuccessfullyPaidReservationScreen]
class SuccessfullyPaidReservationRoute extends PageRouteInfo<void> {
  const SuccessfullyPaidReservationRoute({List<PageRouteInfo>? children})
      : super(
          SuccessfullyPaidReservationRoute.name,
          initialChildren: children,
        );

  static const String name = 'SuccessfullyPaidReservationRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
