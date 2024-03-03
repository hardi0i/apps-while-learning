import 'package:dio/dio.dart';
import 'package:hotel_app_for_sobes/core/constants/url_links.dart';
import 'package:hotel_app_for_sobes/feature/hotel/data/models/hotel.dart';
import 'package:retrofit/retrofit.dart';

part 'hotels_api_service.g.dart';

@RestApi(baseUrl: baseUrl)
abstract class HotelsApiService {
  factory HotelsApiService(Dio dio) = _HotelsApiService;

  @GET('/d144777c-a67f-4e35-867a-cacc3b827473')
  Future<HttpResponse<HotelModel>> getHotels();
}
