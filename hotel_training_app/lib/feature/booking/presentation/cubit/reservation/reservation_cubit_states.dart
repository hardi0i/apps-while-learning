import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hotel_app_for_sobes/common/base_status.dart';
import 'package:hotel_app_for_sobes/feature/booking/domain/entities/reservation.dart';

part 'reservation_cubit_states.freezed.dart';

@freezed
class ReservationCubitState with _$ReservationCubitState {
  const factory ReservationCubitState({
    @Default(BaseStatus.initial()) BaseStatus status,
    @Default([]) List<ReservationEntity> reservation,
  }) = _ReservationCubitState;
}
