// import 'package:freezed_annotation/freezed_annotation.dart';

// part 'tourist.freezed.dart';

// @freezed
// class TouristEntity with _$TouristEntity {
//   const factory TouristEntity({
// required String name,
// required String surname,
// required String birthdate,
// required String citizenship,
// required String passportNumber,
// required String passportEndsDate,
//   }) = _TouristEntity;
// }

import 'package:freezed_annotation/freezed_annotation.dart';

part 'tourist.freezed.dart';
part 'tourist.g.dart';

@freezed
class TouristModel with _$TouristModel {
  @JsonSerializable(explicitToJson: true)
  const factory TouristModel({
    required String name,
    required String surname,
    required String birthdate,
    required String citizenship,
    required String passportNumber,
    required String passportEndsDate,
  }) = _TouristModel;

  factory TouristModel.fromJson(Map<String, dynamic> json) =>
      _$TouristModelFromJson(json);
}
