import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hotel_app_for_sobes/feature/hotel/data/models/about_the_hotel.dart';

part 'hotel.freezed.dart';
part 'hotel.g.dart';

@freezed
class HotelModel with _$HotelModel {
  const factory HotelModel({
    required int id,
    required String name,
    required String adress,
    @JsonKey(name: 'price_for_it') required String priceForIt,
    @JsonKey(name: 'rating_name') required String ratingName,
    @JsonKey(name: 'minimal_price') required num minimalPrice,
    required int rating,
    @JsonKey(name: 'about_the_hotel') required AboutTheHotelModel aboutTheHotel,
    @JsonKey(name: 'image_urls') @Default([]) List<String> imageUrls,
  }) = _HotelModel;

  factory HotelModel.fromJson(Map<String, dynamic> json) =>
      _$HotelModelFromJson(json);
}
