import 'package:dio/dio.dart' hide Headers;

import 'package:hotel_app_for_sobes/core/constants/url_links.dart';
import 'package:hotel_app_for_sobes/feature/rooms/data/model/room.dart';
import 'package:retrofit/retrofit.dart';

part 'rooms_api_service.g.dart';

@RestApi(baseUrl: baseUrl)
abstract class RoomsApiSevice {
  factory RoomsApiSevice(Dio dio) = _RoomsApiSevice;

  @GET('/85db21b4-32a7-4032-bb80-694bb596a445')

  ///In the real world to get info about rooms, we should use hotel ID for this
  ///  @Query('hotelId') String hotelId,
  Future<HttpResponse<List<RoomModel>>> getRooms();
}


/*
// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rooms_api_service.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _RoomsApiSevice implements RoomsApiSevice {
  _RoomsApiSevice(
    this._dio, {
    this.baseUrl,
  }) {
    baseUrl ??= 'https://run.mocky.io/v3';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<HttpResponse<List<RoomModel>>> getRooms() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<HttpResponse<List<RoomModel>>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/85db21b4-32a7-4032-bb80-694bb596a445',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    List<RoomModel> value = _result.data!['rooms']
        .map<RoomModel>(
            (dynamic i) => RoomModel.fromJson(i as Map<String, dynamic>))
        .toList();
    final httpResponse = HttpResponse(value, _result);
    return httpResponse;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }

  String _combineBaseUrls(
    String dioBaseUrl,
    String? baseUrl,
  ) {
    if (baseUrl == null || baseUrl.trim().isEmpty) {
      return dioBaseUrl;
    }

    final url = Uri.parse(baseUrl);

    if (url.isAbsolute) {
      return url.toString();
    }

    return Uri.parse(dioBaseUrl).resolveUri(url).toString();
  }
}

*/