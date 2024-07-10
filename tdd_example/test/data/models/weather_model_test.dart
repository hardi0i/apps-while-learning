import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:tdd_example/data/models/weather_model.dart';
import 'package:tdd_example/domain/entities/weather.dart';

import '../../helpers/json_reader.dart';

void main() {
  const testWeatherModel = WeatherModel(
    cityName: 'New York',
    main: 'Clouds',
    description: 'scattered clouds',
    iconCode: '03d',
    temperature: 278.71,
    pressure: 1026,
    humidity: 50,
  );

  test(
    'should be a subclass of a weather entity',
    () async {
      //assert
      expect(testWeatherModel, isA<WeatherEntity>());
    },
  );

  test(
    'should return a valid model from json',
    () async {
      //arrange
      final Map<String, dynamic> jsonMap = jsonDecode(
        readJson('helpers/dummy_data/dummy_weather_response.json'),
      );

      //act
      final result = WeatherModel.fromJson(jsonMap);

      //assert
      expect(
        result,
        equals(testWeatherModel),
      );
    },
  );

  test(
    'should return a json map containing proper data',
    () async {
      //act
      final result = testWeatherModel.toJson();

      //assert
      final expectedJsonMap = {
        "weather": [
          {
            "main": "Clouds",
            "description": "scattered clouds",
            "icon": "03d",
          }
        ],
        "main": {
          "temp": 278.71,
          "pressure": 1026,
          "humidity": 50,
        },
        "name": "New York",
      };

      expect(
        result,
        equals(expectedJsonMap),
      );
    },
  );
}
