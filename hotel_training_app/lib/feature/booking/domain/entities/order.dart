import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hotel_app_for_sobes/feature/booking/domain/entities/tourist.dart';

part 'order.freezed.dart';

@freezed
class OrderEntity with _$OrderEntity {
  const factory OrderEntity({
    required String hotelId,
    required String roomId,
    required String email,
    required String phone,
    required List<TouristEntity> tourists,
  }) = _OrderEntity;
}
