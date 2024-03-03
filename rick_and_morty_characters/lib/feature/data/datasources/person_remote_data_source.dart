import 'package:di_clean_architecture_solid/feature/data/models/person_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:di_clean_architecture_solid/core/error/exception.dart';

abstract class PersonRemoteDataSource {
  Future<List<PersonModel>> getAllPersons(int page);
  Future<List<PersonModel>> searchPerson(String query);
}

class PersonRemoteDataSourceImpl implements PersonRemoteDataSource {
  final http.Client client;

  PersonRemoteDataSourceImpl({required this.client});

  @override
  Future<List<PersonModel>> getAllPersons(int page) async {
    return _getPersonFromUrl(
        'https://rickandmortyapi.com/api/character/?page=$page');
  }

  @override
  Future<List<PersonModel>> searchPerson(String query) async {
    return _getPersonFromUrl(
        'https://rickandmortyapi.com/api/character/?name=$query');
  }

  Future<List<PersonModel>> _getPersonFromUrl(String url) async {
    final response = await client
        .get(Uri.parse(url), headers: {'Content-Type': 'application/json'});
    if (response.statusCode == 200) {
      final persons = json.decode(response.body);
      return (persons['results'] as List)
          .map((person) => PersonModel.fromJson(person))
          .toList();
    } else {
      throw ServerException();
    }
  }
}
