import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:tdd_example/core/error/failure.dart';
import 'package:tdd_example/domain/entities/weather.dart';
import 'package:tdd_example/presentation/bloc/weather_bloc.dart';
import 'package:tdd_example/presentation/bloc/weather_event.dart';
import 'package:tdd_example/presentation/bloc/weather_state.dart';

import '../../helpers/test_helper.mocks.dart';

void main() {
  late MockGetCurrentWeahterUseCase mockGetCurrentWeahterUseCase;
  late WeatherBloc weatherBloc;

  setUp(() {
    mockGetCurrentWeahterUseCase = MockGetCurrentWeahterUseCase();
    weatherBloc = WeatherBloc(mockGetCurrentWeahterUseCase);
  });

  const testWeather = WeatherEntity(
    cityName: 'New York',
    main: 'Clouds',
    description: 'few clouds',
    iconCode: '02d',
    temperature: 302.28,
    pressure: 1009,
    humidity: 70,
  );

  const testCityName = 'New York';

  test(
    'initial state should be empty',
    () {
      expect(
        weatherBloc.state,
        const WeatherEmpty(),
      );
    },
  );

  blocTest<WeatherBloc, WeatherState>(
    'should emmit [WeatherLoading, WeatherLoaded] when data is gotten successfully',
    build: () {
      when(
        mockGetCurrentWeahterUseCase.execute(testCityName),
      ).thenAnswer(
        (_) async => const Right(testWeather),
      );

      return weatherBloc;
    },
    act: (bloc) => bloc.add(
      const OnCityChanged(testCityName),
    ),
    wait: const Duration(
      milliseconds: 500,
    ),
    expect: () => [
      const WeatherLoading(),
      const WeatherLoaded(testWeather),
    ],
  );

  blocTest<WeatherBloc, WeatherState>(
    'should emmit [WeatherLoading, WeatherLoaded] when get data unsuccesful',
    build: () {
      when(
        mockGetCurrentWeahterUseCase.execute(testCityName),
      ).thenAnswer(
        (_) async => const Left(ServerFailure('Server Failure')),
      );

      return weatherBloc;
    },
    act: (bloc) => bloc.add(
      const OnCityChanged(testCityName),
    ),
    wait: const Duration(
      milliseconds: 500,
    ),
    expect: () => [
      const WeatherLoading(),
      const WeatherLoadFailure('Server Failure'),
    ],
    verify: (bloc) {
      verify(
        mockGetCurrentWeahterUseCase.execute(testCityName),
      );
    },
  );
}
