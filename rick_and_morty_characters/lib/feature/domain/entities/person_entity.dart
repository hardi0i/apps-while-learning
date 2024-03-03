import 'package:equatable/equatable.dart';

class PersonEntity extends Equatable {
  final int id;
  final String name;
  final String status;
  final String species;
  final String type;
  final String gender;
  final LocationEntity origin;
  final LocationEntity location;
  final String image;
  final List<String> episode;
  final DateTime created;

  const PersonEntity({
    required this.id,
    required this.name,
    required this.created,
    required this.episode,
    required this.gender,
    required this.image,
    required this.location,
    required this.origin,
    required this.species,
    required this.status,
    required this.type,
  });

  @override
  List<Object?> get props => [
        id,
        name,
        status,
        created,
        location,
        origin,
        species,
        type,
        episode,
        gender,
        image,
      ];
}

class LocationEntity {
  final String? name;
  final String? url;

  const LocationEntity({this.name, this.url});
}
