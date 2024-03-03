import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:hotel_app_for_sobes/config/theme/cubit/theme_cubit.dart';
import 'package:hotel_app_for_sobes/feature/booking/data/data_sources/remote/reservation_api_service.dart';
import 'package:hotel_app_for_sobes/feature/booking/data/remapper/order_remapper.dart';
import 'package:hotel_app_for_sobes/feature/booking/data/remapper/reservation_remapper.dart';
import 'package:hotel_app_for_sobes/feature/booking/data/remapper/tourist_remapper.dart';
import 'package:hotel_app_for_sobes/feature/booking/data/repository/reservation_repository_impl.dart';
import 'package:hotel_app_for_sobes/feature/booking/domain/repository/reservation_repository.dart';
import 'package:hotel_app_for_sobes/feature/booking/domain/usecases/create_order.dart';
import 'package:hotel_app_for_sobes/feature/booking/domain/usecases/get_reservation_info.dart';
import 'package:hotel_app_for_sobes/feature/booking/presentation/cubit/reservation/reservation_cubit.dart';
import 'package:hotel_app_for_sobes/feature/hotel/data/data_sources/remote/hotels_api_service.dart';
import 'package:hotel_app_for_sobes/feature/hotel/data/remappers/about_the_hotel_remapper.dart';
import 'package:hotel_app_for_sobes/feature/hotel/data/remappers/hotels_remapper.dart';
import 'package:hotel_app_for_sobes/feature/hotel/data/repository/hotels_repository_impl.dart';
import 'package:hotel_app_for_sobes/feature/hotel/domain/repository/hotels_repository.dart';
import 'package:hotel_app_for_sobes/feature/hotel/domain/usecases/get_hotels.dart';
import 'package:hotel_app_for_sobes/feature/hotel/presentation/cubit/hotels_cubit.dart';
import 'package:hotel_app_for_sobes/feature/network_connection/cubit/network_connection_cubit.dart';
import 'package:hotel_app_for_sobes/feature/booking/presentation/cubit/multi_form/form_manager_cubit.dart';
import 'package:hotel_app_for_sobes/feature/booking/presentation/cubit/phone_and_email/phone_and_email_cubit.dart';
import 'package:hotel_app_for_sobes/feature/rooms/data/data_sources/remote/rooms_api_service.dart';
import 'package:hotel_app_for_sobes/feature/rooms/data/remapper/rooms_remapper.dart';
import 'package:hotel_app_for_sobes/feature/rooms/data/repository/rooms_repository_impl.dart';
import 'package:hotel_app_for_sobes/feature/rooms/domain/repository/rooms_repository.dart';
import 'package:hotel_app_for_sobes/feature/rooms/domain/usecases/get_rooms.dart';
import 'package:hotel_app_for_sobes/feature/rooms/presentation/cubit/rooms_cubit.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  //Dio
  sl.registerSingleton<Dio>(
    Dio(),
  );

  //Services
  sl.registerSingleton<HotelsApiService>(
    HotelsApiService(
      sl(),
    ),
  );

  sl.registerSingleton<RoomsApiSevice>(
    RoomsApiSevice(
      sl(),
    ),
  );

  sl.registerSingleton<ReservationApiService>(
    ReservationApiService(
      sl(),
    ),
  );

  //remappers

  sl.registerSingleton<AboutTheHotelRemapper>(
    AboutTheHotelRemapper(),
  );

  sl.registerSingleton<HotelsRemapper>(
    HotelsRemapper(
      sl(),
    ),
  );

  sl.registerSingleton<RoomsRemapper>(
    RoomsRemapper(),
  );

  sl.registerSingleton<ReservationRemapper>(
    ReservationRemapper(),
  );

  sl.registerSingleton<TouristRemapper>(
    TouristRemapper(),
  );

  sl.registerSingleton<OrderRemapper>(
    OrderRemapper(
      sl(),
    ),
  );

  //Repos

  sl.registerSingleton<HotelsRepository>(
    HotelsRepositoryImpl(
      sl(),
      sl(),
    ),
  );

  sl.registerSingleton<RoomsRepository>(
    RoomsRepositoryImpl(
      sl(),
      sl(),
    ),
  );

  sl.registerSingleton<ReservationRepository>(
    ReservationRepositoryImpl(sl(), sl(), sl(), sl()),
  );

  //UseCases

  sl.registerSingleton<GetHotelsUseCase>(
    GetHotelsUseCase(
      sl(),
    ),
  );

  sl.registerSingleton<GetRoomsUseCase>(
    GetRoomsUseCase(
      sl(),
    ),
  );

  sl.registerSingleton<GetReservationInfoUseCase>(
    GetReservationInfoUseCase(
      sl(),
    ),
  );

  sl.registerSingleton<CreateOrderUseCase>(
    CreateOrderUseCase(
      sl(),
    ),
  );

  //BLoCs,Cubits

  sl.registerFactory<NetworkConnectionCubit>(
    () => NetworkConnectionCubit(),
  );

  sl.registerFactory<ThemeCubit>(
    () => ThemeCubit(),
  );

  sl.registerFactory<HotelsCubit>(
    () => HotelsCubit(
      sl(),
    ),
  );

  sl.registerFactory<RoomsCubit>(
    () => RoomsCubit(
      sl(),
    ),
  );

  sl.registerFactory<ReservationCubit>(
    () => ReservationCubit(
      sl(),
    ),
  );

  sl.registerFactory<FormManagerCubit>(
    () => FormManagerCubit(
        // sl(),
        ),
  );

  sl.registerFactory<PhoneAndEmailCubit>(
    () => PhoneAndEmailCubit(),
  );
}
