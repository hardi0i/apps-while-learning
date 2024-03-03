import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotel_app_for_sobes/common/base_status.dart';
import 'package:hotel_app_for_sobes/feature/hotel/domain/usecases/get_hotels.dart';
import 'package:hotel_app_for_sobes/feature/hotel/presentation/cubit/hotels_cubit_state.dart';

class HotelsCubit extends Cubit<HotelsCubitState> {
  HotelsCubit(this._getHotelsUseCase) : super(const HotelsCubitState());

  final GetHotelsUseCase _getHotelsUseCase;

  Future<void> init() async {
    emit(
      state.copyWith(
        status: const BaseStatus.loading(),
      ),
    );

    try {
      final hotels = await _getHotelsUseCase();

      if (isClosed) return;

      emit(
        state.copyWith(
          hotels: hotels,
          status: const BaseStatus.success(),
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
