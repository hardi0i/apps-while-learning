// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tourist.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TouristModelImpl _$$TouristModelImplFromJson(Map<String, dynamic> json) =>
    _$TouristModelImpl(
      name: json['name'] as String,
      surname: json['surname'] as String,
      birthdate: json['birthdate'] as String,
      citizenship: json['citizenship'] as String,
      passportNumber: json['passportNumber'] as String,
      passportEndsDate: json['passportEndsDate'] as String,
    );

Map<String, dynamic> _$$TouristModelImplToJson(_$TouristModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'surname': instance.surname,
      'birthdate': instance.birthdate,
      'citizenship': instance.citizenship,
      'passportNumber': instance.passportNumber,
      'passportEndsDate': instance.passportEndsDate,
    };
