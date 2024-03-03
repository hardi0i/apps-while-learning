import 'package:freezed_annotation/freezed_annotation.dart';

part 'reservation.freezed.dart';

@freezed
class ReservationEntity with _$ReservationEntity {
  const factory ReservationEntity({
    required int id,
    required String hotelName,
    required String hotelAdress,
    required int hotelRating,
    required String ratingName,
    required String departure,
    required String arrivalCountry,
    required String tourDateStart,
    required String tourDateStop,
    required int numberOfNights,
    required String room,
    required String nutrition,
    required num tourPrice,
    required num fuelCharge,
    required num serviceCharge,
    required num totalCost,
  }) = _ReservationEntity;
}
