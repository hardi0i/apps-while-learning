import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:tdd_example/domain/entities/weather.dart';
import 'package:tdd_example/domain/use_cases/get_current_weather.dart';

import '../../helpers/test_helper.mocks.dart';

void main() {
  late GetCurrentWeahterUseCase getCurrentWeahterUseCase;

  late MockWeahterRepository mockWeahterRepository;

  setUp(() {
    mockWeahterRepository = MockWeahterRepository();
    getCurrentWeahterUseCase = GetCurrentWeahterUseCase(mockWeahterRepository);
  });

  const testWeatherDetail = WeatherEntity(
    cityName: 'New York',
    main: 'Clouds',
    description: 'few clouds',
    iconCode: '02d',
    temperature: 302.25,
    pressure: 1009,
    humidity: 80,
  );

  const textCityName = 'New York';

  test(
    'should get current weather detail from the repository',
    () async {
      //arrange
      when(
        mockWeahterRepository.getCurrentWeather(textCityName),
      ).thenAnswer((_) async => const Right(testWeatherDetail));

      //act
      final result = await getCurrentWeahterUseCase.execute(textCityName);

      //assert
      expect(result, const Right(testWeatherDetail));
    },
  );
}
