import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hotel_app_for_sobes/common/base_status.dart';
import 'package:hotel_app_for_sobes/feature/rooms/domain/entities/room.dart';

part 'rooms_cubit_state.freezed.dart';

@freezed
class RoomsCubitState with _$RoomsCubitState {
  const factory RoomsCubitState({
    @Default(BaseStatus.initial()) BaseStatus status,
    @Default([]) List<RoomEntity> rooms,
  }) = _RoomsCubitState;
}
