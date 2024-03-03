import 'package:hotel_app_for_sobes/feature/hotel/data/models/hotel.dart';
import 'package:hotel_app_for_sobes/feature/hotel/data/remappers/about_the_hotel_remapper.dart';
import 'package:hotel_app_for_sobes/feature/hotel/domain/entities/hotel.dart';

class HotelsRemapper {
  HotelsRemapper(
    this._aboutTheHotelRemapper,
  );

  final AboutTheHotelRemapper _aboutTheHotelRemapper;

  HotelEntity fromModel(HotelModel hotelModel) {
    return HotelEntity(
      id: hotelModel.id,
      name: hotelModel.name,
      adress: hotelModel.adress,
      priceForIt: hotelModel.priceForIt,
      ratingName: hotelModel.ratingName,
      minimalPrice: hotelModel.minimalPrice,
      rating: hotelModel.rating,
      aboutTheHotel: _aboutTheHotelRemapper.fromModel(
        hotelModel.aboutTheHotel,
      ),
      imageUrls: hotelModel.imageUrls,
    );
  }

  HotelModel toModel(HotelEntity hotelEntity) {
    return HotelModel(
      id: hotelEntity.id,
      name: hotelEntity.name,
      adress: hotelEntity.adress,
      priceForIt: hotelEntity.priceForIt,
      ratingName: hotelEntity.ratingName,
      minimalPrice: hotelEntity.minimalPrice,
      rating: hotelEntity.rating,
      aboutTheHotel: _aboutTheHotelRemapper.toModel(
        hotelEntity.aboutTheHotel,
      ),
      imageUrls: hotelEntity.imageUrls,
    );
  }
}
