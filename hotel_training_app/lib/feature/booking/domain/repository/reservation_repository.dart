import 'package:hotel_app_for_sobes/feature/booking/domain/entities/order.dart';
import 'package:hotel_app_for_sobes/feature/booking/domain/entities/reservation.dart';

abstract class ReservationRepository {
  //Get booking info from API
  Future<List<ReservationEntity>> getReservationInfo();

  Future<void> createOrder({required OrderEntity order});
}
