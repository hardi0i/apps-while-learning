import 'package:dio/dio.dart';
import 'package:hotel_app_for_sobes/core/constants/url_links.dart';
import 'package:hotel_app_for_sobes/feature/booking/data/model/order.dart';
import 'package:hotel_app_for_sobes/feature/booking/data/model/reservation.dart';
import 'package:retrofit/retrofit.dart';

part 'reservation_api_service.g.dart';

@RestApi(baseUrl: baseUrl)
abstract class ReservationApiService {
  factory ReservationApiService(Dio dio) = _ReservationApiService;

  @GET('/63866c74-d593-432c-af8e-f279d1a8d2ff')
  Future<HttpResponse<ReservationModel>> getReservationInfo();

  @POST('')
  Future<HttpResponse<void>> createOrder({
    @Query('hotel_id') required String hotelId,
    @Query('room_id') required String roomId,
    @Body() required OrderModel order,
  });
}
