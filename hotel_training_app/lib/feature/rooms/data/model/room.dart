import 'package:freezed_annotation/freezed_annotation.dart';

part 'room.freezed.dart';
part 'room.g.dart';

@freezed
class RoomModel with _$RoomModel {
  const factory RoomModel({
    required int id,
    required String name,
    required num price,
    @JsonKey(name: 'price_per') required String pricePer,
    @Default([]) List<String> peculiarities,
    @JsonKey(name: 'image_urls') @Default([]) List<String> imageUrls,
  }) = _RoomModel;

  factory RoomModel.fromJson(Map<String, dynamic> json) =>
      _$RoomModelFromJson(json);
}
