import 'package:freezed_annotation/freezed_annotation.dart';

part 'about_the_hotel.freezed.dart';
part 'about_the_hotel.g.dart';

@freezed
class AboutTheHotelModel with _$AboutTheHotelModel {
  const factory AboutTheHotelModel({
    required String description,
    @Default([]) List<String> peculiarities,
  }) = _AboutTheHotelModel;

  factory AboutTheHotelModel.fromJson(Map<String, dynamic> json) =>
      _$AboutTheHotelModelFromJson(json);
}
