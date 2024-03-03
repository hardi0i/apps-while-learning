import 'dart:collection';

import 'package:di_clean_architecture_solid/feature/domain/entities/person_entity.dart';
import 'package:di_clean_architecture_solid/feature/presentetion/bloc/search_bloc/search_bloc.dart';
import 'package:di_clean_architecture_solid/feature/presentetion/bloc/search_bloc/search_event.dart';
import 'package:di_clean_architecture_solid/feature/presentetion/bloc/search_bloc/search_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import './search_result.dart';

class CustomSearchDelegate extends SearchDelegate {
  CustomSearchDelegate() : super(searchFieldLabel: 'Search for characters...');

  final _suggestions = [
    'Rick',
    'Morty',
    'Summer',
    'Beth',
    'Jerry',
  ];

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(
          Icons.clear_rounded,
        ),
        onPressed: () {
          query = '';
          showSuggestions(context);
        },
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        return close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    BlocProvider.of<PersonSearchBloc>(
      context,
      listen: false,
    )..add(
        SearchPersons(query),
      );
    return BlocBuilder<PersonSearchBloc, PersonSearchState>(
      builder: (context, state) {
        if (state is PersonSearchLoading) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is PersonSearchLoaded) {
          if (state.persons.isEmpty) {
            return _showErrorText('No Characters with that name found');
          }
          return Container(
            child: ListView.builder(
              itemCount: state.persons.isNotEmpty ? state.persons.length : 0,
              itemBuilder: (context, i) {
                PersonEntity result = state.persons[i];
                return SearchResult(personResult: result);
              },
            ),
          );
        } else if (state is PersonSearchError) {
          return _showErrorText(state.message);
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }

  Widget _showErrorText(String message) {
    return Container(
      color: Colors.black,
      child: Center(
        child: Text(
          message,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    if (query.length > 0) {
      return Container();
    }
    return ListView.separated(
      padding: const EdgeInsets.all(10),
      itemCount: _suggestions.length,
      separatorBuilder: (context, index) {
        return Divider();
      },
      itemBuilder: ((context, index) {
        return Text(
          _suggestions[index],
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        );
      }),
    );
  }
}
