import 'package:dartz/dartz.dart';
import 'package:di_clean_architecture_solid/core/error/failure.dart';
import 'package:di_clean_architecture_solid/core/usecase/usecases.dart';
import 'package:di_clean_architecture_solid/feature/domain/entities/person_entity.dart';
import 'package:di_clean_architecture_solid/feature/domain/repository/person_perository.dart';
import 'package:equatable/equatable.dart';

class GetAllPersons extends UseCase<List<PersonEntity>, PagePersonParams> {
  final PersonRepository personRepository;

  GetAllPersons(this.personRepository);

  @override
  Future<Either<Failure, List<PersonEntity>>> call(
      PagePersonParams params) async {
    return personRepository.getAllPersons(params.page);
  }
}

class PagePersonParams extends Equatable {
  final int page;

  const PagePersonParams({required this.page});

  @override
  List<Object?> get props => [page];
}
