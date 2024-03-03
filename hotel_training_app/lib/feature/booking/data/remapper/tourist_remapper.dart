import 'package:hotel_app_for_sobes/feature/booking/data/model/tourist.dart';
import 'package:hotel_app_for_sobes/feature/booking/domain/entities/tourist.dart';

class TouristRemapper {
  TouristEntity fromModel(TouristModel touristModel) {
    return TouristEntity(
      name: touristModel.name,
      surname: touristModel.surname,
      birthdate: touristModel.birthdate,
      citizenship: touristModel.citizenship,
      passportNumber: touristModel.passportNumber,
      passportEndsDate: touristModel.passportEndsDate,
    );
  }

  TouristModel toModel(TouristEntity touristEntity) {
    return TouristModel(
      name: touristEntity.name,
      surname: touristEntity.surname,
      birthdate: touristEntity.birthdate,
      citizenship: touristEntity.citizenship,
      passportNumber: touristEntity.passportNumber,
      passportEndsDate: touristEntity.passportEndsDate,
    );
  }
}
