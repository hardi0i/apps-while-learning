import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotel_app_for_sobes/common/base_status.dart';
import 'package:hotel_app_for_sobes/feature/rooms/domain/usecases/get_rooms.dart';
import 'package:hotel_app_for_sobes/feature/rooms/presentation/cubit/rooms_cubit_state.dart';

class RoomsCubit extends Cubit<RoomsCubitState> {
  RoomsCubit(this._getRoomsUseCase) : super(const RoomsCubitState());

  final GetRoomsUseCase _getRoomsUseCase;

  Future<void> init() async {
    emit(
      state.copyWith(
        status: const BaseStatus.loading(),
      ),
    );

    try {
      final rooms = await _getRoomsUseCase();

      if (isClosed) return;

      emit(
        state.copyWith(
          rooms: rooms,
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
