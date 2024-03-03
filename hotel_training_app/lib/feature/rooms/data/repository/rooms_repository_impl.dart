import 'dart:io';

import 'package:dio/dio.dart';
import 'package:hotel_app_for_sobes/core/errors/exceptions.dart';
import 'package:hotel_app_for_sobes/feature/rooms/data/data_sources/remote/rooms_api_service.dart';
import 'package:hotel_app_for_sobes/feature/rooms/data/remapper/rooms_remapper.dart';
import 'package:hotel_app_for_sobes/feature/rooms/domain/entities/room.dart';
import 'package:hotel_app_for_sobes/feature/rooms/domain/repository/rooms_repository.dart';

class RoomsRepositoryImpl implements RoomsRepository {
  const RoomsRepositoryImpl(
    this._roomsApiSevice,
    this._roomsRemapper,
  );

  final RoomsApiSevice _roomsApiSevice;
  final RoomsRemapper _roomsRemapper;

  @override
  Future<List<RoomEntity>> getRooms() async {
    try {
      final httpResponse = await _roomsApiSevice.getRooms();

      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return httpResponse.data
            .map(
              (roomModel) => _roomsRemapper.fromModel(roomModel),
            )
            .toList();
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
