// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'about_the_hotel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AboutTheHotelModelImpl _$$AboutTheHotelModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AboutTheHotelModelImpl(
      description: json['description'] as String,
      peculiarities: (json['peculiarities'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$AboutTheHotelModelImplToJson(
        _$AboutTheHotelModelImpl instance) =>
    <String, dynamic>{
      'description': instance.description,
      'peculiarities': instance.peculiarities,
    };
