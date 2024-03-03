import 'package:freezed_annotation/freezed_annotation.dart';

part 'tourist.freezed.dart';

@freezed
class TouristEntity with _$TouristEntity {
  const factory TouristEntity({
    required String name,
    required String surname,
    required String birthdate,
    required String citizenship,
    required String passportNumber,
    required String passportEndsDate,
  }) = _TouristEntity;

  factory TouristEntity.empty() => const TouristEntity(
        name: '',
        surname: '',
        birthdate: '',
        citizenship: '',
        passportNumber: '',
        passportEndsDate: '',
      );
}
