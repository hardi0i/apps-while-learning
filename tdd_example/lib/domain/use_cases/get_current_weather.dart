import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:tdd_example/core/error/failure.dart';
import 'package:tdd_example/domain/entities/weather.dart';
import 'package:tdd_example/domain/repository/weather_repository.dart';

@lazySingleton
class GetCurrentWeahterUseCase {
  final WeahterRepository _weahterRepository;

  const GetCurrentWeahterUseCase(this._weahterRepository);

  Future<Either<Failure, WeatherEntity>> execute(String cityName) {
    return _weahterRepository.getCurrentWeather(cityName);
  }
}
