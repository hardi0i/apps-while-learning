import 'dart:convert';

import 'package:di_clean_architecture_solid/core/error/exception.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../models/person_model.dart';

abstract class PersonLocalDataSource {
  Future<List<PersonModel>> getLastPersonsFromCache();
  Future<void> personsToCache(List<PersonModel> persons);
}

const String CACHED_PERSONS_LIST = 'CACHED_PERSONS_LIST';

class PersonLocalDataSourceImlp extends PersonLocalDataSource {
  final SharedPreferences sharedPreferences;

  PersonLocalDataSourceImlp({required this.sharedPreferences});

  @override
  Future<List<PersonModel>> getLastPersonsFromCache() {
    final jsonPersonsList =
        sharedPreferences.getStringList(CACHED_PERSONS_LIST);
    if (jsonPersonsList != null) {
      return Future.value(jsonPersonsList
          .map((e) => PersonModel.fromJson(json.decode(e)))
          .toList());
    } else {
      throw CacheException();
    }
  }

  @override
  Future<void> personsToCache(List<PersonModel> persons) {
    final List<String> jsonPersonsList =
        persons.map((person) => json.encode(person.toJson())).toList();

    sharedPreferences.setStringList(CACHED_PERSONS_LIST, jsonPersonsList);
    return Future.value(jsonPersonsList);
  }
}
