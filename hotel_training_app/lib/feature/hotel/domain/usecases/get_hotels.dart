import 'package:hotel_app_for_sobes/core/usecases/usecase.dart';
import 'package:hotel_app_for_sobes/feature/hotel/domain/entities/hotel.dart';
import 'package:hotel_app_for_sobes/feature/hotel/domain/repository/hotels_repository.dart';

class GetHotelsUseCase implements UseCase<List<HotelEntity>, void> {
  GetHotelsUseCase(this._hotelsRepository);

  final HotelsRepository _hotelsRepository;

  @override
  Future<List<HotelEntity>> call({params}) {
    return _hotelsRepository.getHotels();
  }
}
