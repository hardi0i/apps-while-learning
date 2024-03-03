import 'package:hotel_app_for_sobes/feature/rooms/domain/entities/room.dart';

abstract class RoomsRepository {
  //Get rooms from API
  Future<List<RoomEntity>> getRooms();
}
