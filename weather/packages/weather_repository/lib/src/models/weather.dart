import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/material.dart';

part 'weather.g.dart';

enum WeatherCondition {
  clear,
  rainy,
  cloudy,
  snowy,
  unknown,
}

@JsonSerializable()
class Weather extends Equatable {
  const Weather({
    required this.temperature,
    required this.condition,
    required this.location,
  });

  factory Weather.fromJson(Map<String, dynamic> json) =>
      _$WeatherFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherToJson(this);

  final double temperature;
  final String location;
  final WeatherCondition condition;

  @override
  // TODO: implement props
  List<Object?> get props => [
        temperature,
        condition,
        location,
      ];
}
