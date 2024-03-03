import 'package:dartz/dartz.dart';
import 'package:di_clean_architecture_solid/core/error/failure.dart';

abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}
