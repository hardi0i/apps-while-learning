import 'package:hotel_app_for_sobes/feature/hotel/domain/entities/hotel.dart';

abstract class HotelsRepository {
  //Get hotels from API
  Future<List<HotelEntity>> getHotels();
}
