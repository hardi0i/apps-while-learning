import 'package:hotel_app_for_sobes/core/usecases/usecase.dart';
import 'package:hotel_app_for_sobes/feature/rooms/domain/entities/room.dart';
import 'package:hotel_app_for_sobes/feature/rooms/domain/repository/rooms_repository.dart';

///In the real world to get info about rooms, we should use hotel ID for this
///
/// class GetRoomsUseCase implements UseCase<List<RoomEntity>, int> {
/// ...
///Future<List<RoomEntity>> call({int params}) {
/// return _roomsRepository.getRooms(params);
/// }
///}

class GetRoomsUseCase implements UseCase<List<RoomEntity>, void> {
  GetRoomsUseCase(this._roomsRepository);

  final RoomsRepository _roomsRepository;

  @override
  Future<List<RoomEntity>> call({params}) {
    return _roomsRepository.getRooms();
  }
}
