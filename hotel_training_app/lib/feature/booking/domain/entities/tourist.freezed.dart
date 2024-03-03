// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tourist.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TouristEntity {
  String get name => throw _privateConstructorUsedError;
  String get surname => throw _privateConstructorUsedError;
  String get birthdate => throw _privateConstructorUsedError;
  String get citizenship => throw _privateConstructorUsedError;
  String get passportNumber => throw _privateConstructorUsedError;
  String get passportEndsDate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TouristEntityCopyWith<TouristEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TouristEntityCopyWith<$Res> {
  factory $TouristEntityCopyWith(
          TouristEntity value, $Res Function(TouristEntity) then) =
      _$TouristEntityCopyWithImpl<$Res, TouristEntity>;
  @useResult
  $Res call(
      {String name,
      String surname,
      String birthdate,
      String citizenship,
      String passportNumber,
      String passportEndsDate});
}

/// @nodoc
class _$TouristEntityCopyWithImpl<$Res, $Val extends TouristEntity>
    implements $TouristEntityCopyWith<$Res> {
  _$TouristEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? surname = null,
    Object? birthdate = null,
    Object? citizenship = null,
    Object? passportNumber = null,
    Object? passportEndsDate = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      surname: null == surname
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String,
      birthdate: null == birthdate
          ? _value.birthdate
          : birthdate // ignore: cast_nullable_to_non_nullable
              as String,
      citizenship: null == citizenship
          ? _value.citizenship
          : citizenship // ignore: cast_nullable_to_non_nullable
              as String,
      passportNumber: null == passportNumber
          ? _value.passportNumber
          : passportNumber // ignore: cast_nullable_to_non_nullable
              as String,
      passportEndsDate: null == passportEndsDate
          ? _value.passportEndsDate
          : passportEndsDate // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TouristEntityImplCopyWith<$Res>
    implements $TouristEntityCopyWith<$Res> {
  factory _$$TouristEntityImplCopyWith(
          _$TouristEntityImpl value, $Res Function(_$TouristEntityImpl) then) =
      __$$TouristEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String surname,
      String birthdate,
      String citizenship,
      String passportNumber,
      String passportEndsDate});
}

/// @nodoc
class __$$TouristEntityImplCopyWithImpl<$Res>
    extends _$TouristEntityCopyWithImpl<$Res, _$TouristEntityImpl>
    implements _$$TouristEntityImplCopyWith<$Res> {
  __$$TouristEntityImplCopyWithImpl(
      _$TouristEntityImpl _value, $Res Function(_$TouristEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? surname = null,
    Object? birthdate = null,
    Object? citizenship = null,
    Object? passportNumber = null,
    Object? passportEndsDate = null,
  }) {
    return _then(_$TouristEntityImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      surname: null == surname
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String,
      birthdate: null == birthdate
          ? _value.birthdate
          : birthdate // ignore: cast_nullable_to_non_nullable
              as String,
      citizenship: null == citizenship
          ? _value.citizenship
          : citizenship // ignore: cast_nullable_to_non_nullable
              as String,
      passportNumber: null == passportNumber
          ? _value.passportNumber
          : passportNumber // ignore: cast_nullable_to_non_nullable
              as String,
      passportEndsDate: null == passportEndsDate
          ? _value.passportEndsDate
          : passportEndsDate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TouristEntityImpl implements _TouristEntity {
  const _$TouristEntityImpl(
      {required this.name,
      required this.surname,
      required this.birthdate,
      required this.citizenship,
      required this.passportNumber,
      required this.passportEndsDate});

  @override
  final String name;
  @override
  final String surname;
  @override
  final String birthdate;
  @override
  final String citizenship;
  @override
  final String passportNumber;
  @override
  final String passportEndsDate;

  @override
  String toString() {
    return 'TouristEntity(name: $name, surname: $surname, birthdate: $birthdate, citizenship: $citizenship, passportNumber: $passportNumber, passportEndsDate: $passportEndsDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TouristEntityImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.surname, surname) || other.surname == surname) &&
            (identical(other.birthdate, birthdate) ||
                other.birthdate == birthdate) &&
            (identical(other.citizenship, citizenship) ||
                other.citizenship == citizenship) &&
            (identical(other.passportNumber, passportNumber) ||
                other.passportNumber == passportNumber) &&
            (identical(other.passportEndsDate, passportEndsDate) ||
                other.passportEndsDate == passportEndsDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, surname, birthdate,
      citizenship, passportNumber, passportEndsDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TouristEntityImplCopyWith<_$TouristEntityImpl> get copyWith =>
      __$$TouristEntityImplCopyWithImpl<_$TouristEntityImpl>(this, _$identity);
}

abstract class _TouristEntity implements TouristEntity {
  const factory _TouristEntity(
      {required final String name,
      required final String surname,
      required final String birthdate,
      required final String citizenship,
      required final String passportNumber,
      required final String passportEndsDate}) = _$TouristEntityImpl;

  @override
  String get name;
  @override
  String get surname;
  @override
  String get birthdate;
  @override
  String get citizenship;
  @override
  String get passportNumber;
  @override
  String get passportEndsDate;
  @override
  @JsonKey(ignore: true)
  _$$TouristEntityImplCopyWith<_$TouristEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
