import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:tdd_example/core/error/exception.dart';
import 'package:tdd_example/core/error/failure.dart';
import 'package:tdd_example/data/data_sources/remote_data_source.dart';
import 'package:tdd_example/domain/entities/weather.dart';
import 'package:tdd_example/domain/repository/weather_repository.dart';

@LazySingleton(as: WeahterRepository)
class WeatherRepositoryImpl implements WeahterRepository {
  WeatherRepositoryImpl(this.weatherRemoteDataSource);

  final WeatherRemoteDataSource weatherRemoteDataSource;

  @override
  Future<Either<Failure, WeatherEntity>> getCurrentWeather(
      String cityName) async {
    try {
      final result = await weatherRemoteDataSource.getCurrentWeather(cityName);
      return Right(result.toEntity());
    } on ServerException {
      return const Left(ServerFailure('An error has occurred'));
    } on SocketException {
      return const Left(ConnectionFailure('Failed to connnect to the network'));
    }
  }
}
