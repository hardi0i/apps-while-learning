import 'package:freezed_annotation/freezed_annotation.dart';

part 'about_the_hotel.freezed.dart';

@freezed
class AboutTheHotelEnity with _$AboutTheHotelEnity {
  const factory AboutTheHotelEnity({
    required String description,
    @Default([]) List<String> peculiarities,
  }) = _AboutTheHotelEnity;
}
