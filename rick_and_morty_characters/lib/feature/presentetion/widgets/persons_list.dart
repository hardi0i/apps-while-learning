import 'package:di_clean_architecture_solid/feature/domain/entities/person_entity.dart';
import 'package:di_clean_architecture_solid/feature/presentetion/bloc/person_list_cubit/person_list_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'person_card_widget.dart';

import '../bloc/person_list_cubit/person_list_cubit.dart';

class PersonsList extends StatelessWidget {
  final scrollController = ScrollController();

  void setupScrollController(BuildContext context) {
    scrollController.addListener(() {
      if (scrollController.position.atEdge) {
        if (scrollController.position.pixels != 0) {
          context.read<PersonListCubit>().loadPerson();
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PersonListCubit, PersonState>(
      builder: (context, state) {
        List<PersonEntity> persons = [];
        bool isLoading = false;
        if (state is PersonLoading && state.isFirstFetch) {
          return _loadingIndicator();
        } else if (state is PersonLoading) {
          persons = state.oldPersonList;
          isLoading = true;
        } else if (state is PersonLoaded) {
          persons = state.personList;
        } else if (state is PersonError) {
          return Text(
            state.message,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          );
        }
        return ListView.separated(
          controller: scrollController,
          itemBuilder: ((context, index) {
            if (index < persons.length) {
              return PersonCard(person: persons[index]);
            } else {
              return _loadingIndicator();
            }
          }),
          separatorBuilder: ((context, index) {
            return Divider(
              color: Colors.grey[400],
            );
          }),
          itemCount: persons.length + (isLoading ? 1 : 0),
        );
      },
    );
  }

  Widget _loadingIndicator() {
    return Padding(
      padding: const EdgeInsets.all(
        8.0,
      ),
      child: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
