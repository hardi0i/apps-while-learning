// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderModelImpl _$$OrderModelImplFromJson(Map<String, dynamic> json) =>
    _$OrderModelImpl(
      hotelId: json['hotelId'] as String,
      roomId: json['roomId'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
      tourists: (json['tourists'] as List<dynamic>?)
              ?.map((e) => TouristModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$OrderModelImplToJson(_$OrderModelImpl instance) =>
    <String, dynamic>{
      'hotelId': instance.hotelId,
      'roomId': instance.roomId,
      'email': instance.email,
      'phone': instance.phone,
      'tourists': instance.tourists,
    };
