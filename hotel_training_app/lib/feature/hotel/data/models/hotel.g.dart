// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hotel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HotelModelImpl _$$HotelModelImplFromJson(Map<String, dynamic> json) =>
    _$HotelModelImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      adress: json['adress'] as String,
      priceForIt: json['price_for_it'] as String,
      ratingName: json['rating_name'] as String,
      minimalPrice: json['minimal_price'] as num,
      rating: json['rating'] as int,
      aboutTheHotel: AboutTheHotelModel.fromJson(
          json['about_the_hotel'] as Map<String, dynamic>),
      imageUrls: (json['image_urls'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$HotelModelImplToJson(_$HotelModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'adress': instance.adress,
      'price_for_it': instance.priceForIt,
      'rating_name': instance.ratingName,
      'minimal_price': instance.minimalPrice,
      'rating': instance.rating,
      'about_the_hotel': instance.aboutTheHotel,
      'image_urls': instance.imageUrls,
    };
