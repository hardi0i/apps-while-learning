import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:tdd_example/core/error/exception.dart';
import 'package:tdd_example/core/error/failure.dart';
import 'package:tdd_example/data/models/weather_model.dart';
import 'package:tdd_example/data/repositories/weather_repository_impl.dart';
import 'package:tdd_example/domain/entities/weather.dart';

import '../../helpers/test_helper.mocks.dart';

void main() {
  late MockWeatherRemoteDataSource mockWeatherRemoteDataSource;
  late WeatherRepositoryImpl weahterRepositoryImpl;

  setUp(() {
    mockWeatherRemoteDataSource = MockWeatherRemoteDataSource();
    weahterRepositoryImpl = WeatherRepositoryImpl(mockWeatherRemoteDataSource);
  });

  const testWeatherModel = WeatherModel(
    cityName: 'New York',
    main: 'Clouds',
    description: 'few clouds',
    iconCode: '02d',
    temperature: 302.28,
    pressure: 1009,
    humidity: 70,
  );

  const testWeatherEntity = WeatherEntity(
    cityName: 'New York',
    main: 'Clouds',
    description: 'few clouds',
    iconCode: '02d',
    temperature: 302.28,
    pressure: 1009,
    humidity: 70,
  );

  const testCityName = 'New York';

  group(
    'get current weather',
    () {
      test(
        'should return weather when a call data source is successful',
        () async {
          //arrange
          when(mockWeatherRemoteDataSource.getCurrentWeather(testCityName))
              .thenAnswer(
            (_) async => testWeatherModel,
          );

          //act
          final result =
              await weahterRepositoryImpl.getCurrentWeather(testCityName);

          //assert
          expect(
            result,
            equals(const Right(testWeatherEntity)),
          );
        },
      );

      test(
        'should return server failure when a call data source is unsuccessful',
        () async {
          //arrange
          when(mockWeatherRemoteDataSource.getCurrentWeather(testCityName))
              .thenThrow(
            ServerException(),
          );

          //act
          final result =
              await weahterRepositoryImpl.getCurrentWeather(testCityName);

          //assert
          expect(
            result,
            equals(
              const Left(ServerFailure('An error has occurred')),
            ),
          );
        },
      );

      test(
        'should return connection failure when the device has no internet connection',
        () async {
          //arrange
          when(mockWeatherRemoteDataSource.getCurrentWeather(testCityName))
              .thenThrow(
            const SocketException('Failed to connnect to the network'),
          );

          //act
          final result =
              await weahterRepositoryImpl.getCurrentWeather(testCityName);

          //assert
          expect(
            result,
            equals(
              const Left(
                ConnectionFailure('Failed to connnect to the network'),
              ),
            ),
          );
        },
      );
    },
  );
}
