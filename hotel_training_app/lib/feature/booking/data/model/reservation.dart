import 'package:freezed_annotation/freezed_annotation.dart';

part 'reservation.freezed.dart';
part 'reservation.g.dart';

@freezed
class ReservationModel with _$ReservationModel {
  const factory ReservationModel({
    required int id,
    @JsonKey(name: 'hotel_name') required String hotelName,
    @JsonKey(name: 'hotel_adress') required String hotelAdress,
    @JsonKey(name: 'horating') required int hotelRating,
    @JsonKey(name: 'rating_name') required String ratingName,
    required String departure,
    @JsonKey(name: 'arrival_country') required String arrivalCountry,
    @JsonKey(name: 'tour_date_start') required String tourDateStart,
    @JsonKey(name: 'tour_date_stop') required String tourDateStop,
    @JsonKey(name: 'number_of_nights') required int numberOfNights,
    required String room,
    required String nutrition,
    @JsonKey(name: 'tour_price') required num tourPrice,
    @JsonKey(name: 'fuel_charge') required num fuelCharge,
    @JsonKey(name: 'service_charge') required num serviceCharge,
  }) = _ReservationModel;

  factory ReservationModel.fromJson(Map<String, dynamic> json) =>
      _$ReservationModelFromJson(json);
}
