import 'package:hotel_app_for_sobes/feature/hotel/data/models/about_the_hotel.dart';
import 'package:hotel_app_for_sobes/feature/hotel/domain/entities/about_the_hotel.dart';

class AboutTheHotelRemapper {
  AboutTheHotelEnity fromModel(AboutTheHotelModel aboutTheHotelModel) {
    return AboutTheHotelEnity(
      description: aboutTheHotelModel.description,
      peculiarities: aboutTheHotelModel.peculiarities,
    );
  }

  AboutTheHotelModel toModel(AboutTheHotelEnity aboutTheHotelEnity) {
    return AboutTheHotelModel(
      description: aboutTheHotelEnity.description,
      peculiarities: aboutTheHotelEnity.peculiarities,
    );
  }
}
