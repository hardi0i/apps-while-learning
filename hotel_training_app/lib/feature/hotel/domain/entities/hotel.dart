import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hotel_app_for_sobes/feature/hotel/domain/entities/about_the_hotel.dart';

part 'hotel.freezed.dart';

@freezed
class HotelEntity with _$HotelEntity {
  const factory HotelEntity({
    required int id,
    required String name,
    required String adress,
    required String priceForIt,
    required String ratingName,
    required num minimalPrice,
    required int rating,
    required AboutTheHotelEnity aboutTheHotel,
    @Default([]) List<String> imageUrls,
  }) = _HotelEntity;
}
