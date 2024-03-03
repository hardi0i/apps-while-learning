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

TouristModel _$TouristModelFromJson(Map<String, dynamic> json) {
  return _TouristModel.fromJson(json);
}

/// @nodoc
mixin _$TouristModel {
  String get name => throw _privateConstructorUsedError;
  String get surname => throw _privateConstructorUsedError;
  String get birthdate => throw _privateConstructorUsedError;
  String get citizenship => throw _privateConstructorUsedError;
  String get passportNumber => throw _privateConstructorUsedError;
  String get passportEndsDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TouristModelCopyWith<TouristModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TouristModelCopyWith<$Res> {
  factory $TouristModelCopyWith(
          TouristModel value, $Res Function(TouristModel) then) =
      _$TouristModelCopyWithImpl<$Res, TouristModel>;
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
class _$TouristModelCopyWithImpl<$Res, $Val extends TouristModel>
    implements $TouristModelCopyWith<$Res> {
  _$TouristModelCopyWithImpl(this._value, this._then);

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
abstract class _$$TouristModelImplCopyWith<$Res>
    implements $TouristModelCopyWith<$Res> {
  factory _$$TouristModelImplCopyWith(
          _$TouristModelImpl value, $Res Function(_$TouristModelImpl) then) =
      __$$TouristModelImplCopyWithImpl<$Res>;
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
class __$$TouristModelImplCopyWithImpl<$Res>
    extends _$TouristModelCopyWithImpl<$Res, _$TouristModelImpl>
    implements _$$TouristModelImplCopyWith<$Res> {
  __$$TouristModelImplCopyWithImpl(
      _$TouristModelImpl _value, $Res Function(_$TouristModelImpl) _then)
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
    return _then(_$TouristModelImpl(
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

@JsonSerializable(explicitToJson: true)
class _$TouristModelImpl implements _TouristModel {
  const _$TouristModelImpl(
      {required this.name,
      required this.surname,
      required this.birthdate,
      required this.citizenship,
      required this.passportNumber,
      required this.passportEndsDate});

  factory _$TouristModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TouristModelImplFromJson(json);

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
    return 'TouristModel(name: $name, surname: $surname, birthdate: $birthdate, citizenship: $citizenship, passportNumber: $passportNumber, passportEndsDate: $passportEndsDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TouristModelImpl &&
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

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, surname, birthdate,
      citizenship, passportNumber, passportEndsDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TouristModelImplCopyWith<_$TouristModelImpl> get copyWith =>
      __$$TouristModelImplCopyWithImpl<_$TouristModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TouristModelImplToJson(
      this,
    );
  }
}

abstract class _TouristModel implements TouristModel {
  const factory _TouristModel(
      {required final String name,
      required final String surname,
      required final String birthdate,
      required final String citizenship,
      required final String passportNumber,
      required final String passportEndsDate}) = _$TouristModelImpl;

  factory _TouristModel.fromJson(Map<String, dynamic> json) =
      _$TouristModelImpl.fromJson;

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
  _$$TouristModelImplCopyWith<_$TouristModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
