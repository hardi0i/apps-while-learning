import 'package:hotel_app_for_sobes/core/usecases/usecase.dart';
import 'package:hotel_app_for_sobes/feature/booking/domain/entities/order.dart';
import 'package:hotel_app_for_sobes/feature/booking/domain/repository/reservation_repository.dart';

class CreateOrderUseCase implements UseCase<void, OrderEntity> {
  CreateOrderUseCase(this._reservationRepository);

  final ReservationRepository _reservationRepository;

  @override
  Future<void> call({required OrderEntity params}) async {
    return _reservationRepository.createOrder(order: params);
  }
}
