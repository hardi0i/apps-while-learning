import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hotel_app_for_sobes/feature/booking/data/model/tourist.dart';

part 'order.freezed.dart';
part 'order.g.dart';

@freezed
class OrderModel with _$OrderModel {
  const factory OrderModel({
    required String hotelId,
    required String roomId,
    required String email,
    required String phone,
    @Default([]) List<TouristModel> tourists,
  }) = _OrderModel;

  factory OrderModel.fromJson(Map<String, dynamic> json) =>
      _$OrderModelFromJson(json);
}
