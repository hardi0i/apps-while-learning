import 'package:dartz/dartz.dart';
import 'package:tdd_example/core/error/failure.dart';
import 'package:tdd_example/domain/entities/weather.dart';

abstract interface class WeahterRepository {
  Future<Either<Failure, WeatherEntity>> getCurrentWeather(String cityName);
}
