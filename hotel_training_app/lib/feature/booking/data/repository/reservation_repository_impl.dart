import 'dart:io';

import 'package:dio/dio.dart';
import 'package:hotel_app_for_sobes/core/errors/exceptions.dart';
import 'package:hotel_app_for_sobes/feature/booking/data/data_sources/remote/reservation_api_service.dart';
import 'package:hotel_app_for_sobes/feature/booking/data/remapper/order_remapper.dart';
import 'package:hotel_app_for_sobes/feature/booking/data/remapper/reservation_remapper.dart';
import 'package:hotel_app_for_sobes/feature/booking/domain/entities/order.dart';
import 'package:hotel_app_for_sobes/feature/booking/domain/entities/reservation.dart';
import 'package:hotel_app_for_sobes/feature/booking/domain/repository/reservation_repository.dart';

class ReservationRepositoryImpl implements ReservationRepository {
  ReservationRepositoryImpl(
    this._reservationApiService,
    this._reservationRemapper,
    this._orderRemapper,
    this._orderApiService,
  );

  final ReservationApiService _reservationApiService;
  final ReservationRemapper _reservationRemapper;

  final ReservationApiService _orderApiService;
  final OrderRemapper _orderRemapper;

  @override
  Future<List<ReservationEntity>> getReservationInfo() async {
    try {
      final httpResponse = await _reservationApiService.getReservationInfo();

      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return [_reservationRemapper.fromModel(httpResponse.data)];
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

  @override
  Future<void> createOrder({required OrderEntity order}) async {
    final orderModel = _orderRemapper.toModel(order);

    try {
      await _orderApiService.createOrder(
        hotelId: orderModel.hotelId,
        roomId: orderModel.roomId,
        order: orderModel,
      );
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
