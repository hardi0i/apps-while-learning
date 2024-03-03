import 'dart:io';

import 'package:dio/dio.dart';
import 'package:hotel_app_for_sobes/core/errors/exceptions.dart';
import 'package:hotel_app_for_sobes/feature/hotel/data/data_sources/remote/hotels_api_service.dart';
import 'package:hotel_app_for_sobes/feature/hotel/data/remappers/hotels_remapper.dart';
import 'package:hotel_app_for_sobes/feature/hotel/domain/entities/hotel.dart';
import 'package:hotel_app_for_sobes/feature/hotel/domain/repository/hotels_repository.dart';

class HotelsRepositoryImpl implements HotelsRepository {
  const HotelsRepositoryImpl(
    this._hotelsApiService,
    this._hotelsRemapper,
  );

  final HotelsApiService _hotelsApiService;
  final HotelsRemapper _hotelsRemapper;

  @override
  Future<List<HotelEntity>> getHotels() async {
    try {
      final httpResponse = await _hotelsApiService.getHotels();

      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return [
          _hotelsRemapper.fromModel(httpResponse.data),
        ];
      } else {
        throw DioException(
          requestOptions: httpResponse.response.requestOptions,
          error: httpResponse.response.statusMessage,
          response: httpResponse.response,
          type: DioExceptionType.badResponse,
        );
      }
    } on DioException catch (e) {
      throw ServerException(
        requestOptions: e.requestOptions,
        message: e.message,
      );
    } catch (e) {
      throw GenericException(
        message: e.toString(),
      );
    }
  }
}
