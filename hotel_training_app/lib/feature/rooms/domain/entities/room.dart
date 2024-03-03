import 'package:freezed_annotation/freezed_annotation.dart';

part 'room.freezed.dart';

@freezed
class RoomEntity with _$RoomEntity {
  const factory RoomEntity({
    required int id,
    required String name,
    required num price,
    required String pricePer,
    @Default([]) List<String> peculiarities,
    @Default([]) List<String> imageUrls,
  }) = _RoomEntity;
}
