import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hotel_app_for_sobes/common/base_status.dart';
import 'package:hotel_app_for_sobes/feature/hotel/domain/entities/hotel.dart';

part 'hotels_cubit_state.freezed.dart';

@freezed
class HotelsCubitState with _$HotelsCubitState {
  const factory HotelsCubitState({
    @Default(BaseStatus.initial()) BaseStatus status,
    @Default([]) List<HotelEntity> hotels,
  }) = _HotelsCubitState;
}
