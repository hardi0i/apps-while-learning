import 'package:hotel_app_for_sobes/core/usecases/usecase.dart';
import 'package:hotel_app_for_sobes/feature/booking/domain/entities/reservation.dart';
import 'package:hotel_app_for_sobes/feature/booking/domain/repository/reservation_repository.dart';

class GetReservationInfoUseCase
    implements UseCase<List<ReservationEntity>, void> {
  GetReservationInfoUseCase(this._reservationRepository);

  final ReservationRepository _reservationRepository;

  @override
  Future<List<ReservationEntity>> call({params}) {
    return _reservationRepository.getReservationInfo();
  }
}
