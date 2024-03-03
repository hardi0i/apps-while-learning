import 'package:hotel_app_for_sobes/feature/rooms/data/model/room.dart';
import 'package:hotel_app_for_sobes/feature/rooms/domain/entities/room.dart';

class RoomsRemapper {
  RoomEntity fromModel(RoomModel hotelModel) {
    return RoomEntity(
      id: hotelModel.id,
      name: hotelModel.name,
      price: hotelModel.price,
      pricePer: hotelModel.pricePer,
      peculiarities: hotelModel.peculiarities,
      imageUrls: hotelModel.imageUrls,
    );
  }

  RoomModel toModel(RoomEntity hotelEntity) {
    return RoomModel(
      id: hotelEntity.id,
      name: hotelEntity.name,
      price: hotelEntity.price,
      pricePer: hotelEntity.pricePer,
      peculiarities: hotelEntity.peculiarities,
      imageUrls: hotelEntity.imageUrls,
    );
  }
}
