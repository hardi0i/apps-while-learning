import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotel_app_for_sobes/common/base_status.dart';
import 'package:hotel_app_for_sobes/core/errors/exceptions.dart';
import 'package:hotel_app_for_sobes/feature/booking/domain/usecases/get_reservation_info.dart';
import 'package:hotel_app_for_sobes/feature/booking/presentation/cubit/reservation/reservation_cubit_states.dart';

class ReservationCubit extends Cubit<ReservationCubitState> {
  ReservationCubit(this._getReservationInfoUseCase)
      : super(const ReservationCubitState());

  final GetReservationInfoUseCase _getReservationInfoUseCase;

  Future<void> init() async {
    emit(
      state.copyWith(
        status: const BaseStatus.loading(),
      ),
    );

    try {
      final reservationInfo = await _getReservationInfoUseCase();

      if (isClosed) return;

      emit(
        state.copyWith(
          reservation: reservationInfo,
          status: const BaseStatus.success(),
        ),
      );
    } on GenericException catch (e) {
      if (isClosed) return;

      emit(
        state.copyWith(
          status: BaseStatus.failure(
            e.message.toString(),
          ),
        ),
      );
    } on DioException catch (e) {
      if (isClosed) return;

      emit(
        state.copyWith(
          status: BaseStatus.failure(
            e.message.toString(),
          ),
        ),
      );
    } catch (e) {
      if (isClosed) return;

      emit(
        state.copyWith(
          status: BaseStatus.failure(
            e.toString(),
          ),
        ),
      );
    }
  }
}
