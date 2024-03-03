import 'package:hotel_app_for_sobes/feature/booking/data/model/reservation.dart';
import 'package:hotel_app_for_sobes/feature/booking/domain/entities/reservation.dart';

class ReservationRemapper {
  ReservationEntity fromModel(ReservationModel hotelModel) {
    return ReservationEntity(
      id: hotelModel.id,
      hotelName: hotelModel.hotelAdress,
      hotelAdress: hotelModel.hotelAdress,
      hotelRating: hotelModel.hotelRating,
      ratingName: hotelModel.ratingName,
      departure: hotelModel.departure,
      arrivalCountry: hotelModel.arrivalCountry,
      tourDateStart: hotelModel.tourDateStart,
      tourDateStop: hotelModel.tourDateStop,
      numberOfNights: hotelModel.numberOfNights,
      room: hotelModel.room,
      nutrition: hotelModel.nutrition,
      tourPrice: hotelModel.tourPrice,
      fuelCharge: hotelModel.fuelCharge,
      serviceCharge: hotelModel.serviceCharge,
      totalCost: hotelModel.tourPrice +
          hotelModel.fuelCharge +
          hotelModel.serviceCharge,
    );
  }

  ReservationModel toModel(ReservationEntity hotelEntity) {
    return ReservationModel(
      id: hotelEntity.id,
      hotelName: hotelEntity.hotelAdress,
      hotelAdress: hotelEntity.hotelAdress,
      hotelRating: hotelEntity.hotelRating,
      ratingName: hotelEntity.ratingName,
      departure: hotelEntity.departure,
      arrivalCountry: hotelEntity.arrivalCountry,
      tourDateStart: hotelEntity.tourDateStart,
      tourDateStop: hotelEntity.tourDateStop,
      numberOfNights: hotelEntity.numberOfNights,
      room: hotelEntity.room,
      nutrition: hotelEntity.nutrition,
      tourPrice: hotelEntity.tourPrice,
      fuelCharge: hotelEntity.fuelCharge,
      serviceCharge: hotelEntity.serviceCharge,
    );
  }
}
