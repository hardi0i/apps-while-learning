import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:tdd_example/core/constants/constants.dart';
import 'package:tdd_example/core/error/exception.dart';
import 'package:tdd_example/data/models/weather_model.dart';

abstract class WeatherRemoteDataSource {
  Future<WeatherModel> getCurrentWeather(String cityName);
}

@LazySingleton(as: WeatherRemoteDataSource)
class WeatherRemoteDataSourceImpl implements WeatherRemoteDataSource {
  final http.Client client;

  WeatherRemoteDataSourceImpl(this.client);

  @override
  Future<WeatherModel> getCurrentWeather(String cityName) async {
    final response = await client.get(
      Uri.parse(
        Urls.currentWeatherByName(cityName),
      ),
    );

    if (response.statusCode == 200) {
      return WeatherModel.fromJson(
        jsonDecode(response.body),
      );
    } else {
      throw ServerException();
    }
  }
}

@module
abstract class HttpClient {
  // url here will be injected
  @lazySingleton
  http.Client get httpClient => http.Client();
}
