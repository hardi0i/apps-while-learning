// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'about_the_hotel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AboutTheHotelModel _$AboutTheHotelModelFromJson(Map<String, dynamic> json) {
  return _AboutTheHotelModel.fromJson(json);
}

/// @nodoc
mixin _$AboutTheHotelModel {
  String get description => throw _privateConstructorUsedError;
  List<String> get peculiarities => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AboutTheHotelModelCopyWith<AboutTheHotelModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AboutTheHotelModelCopyWith<$Res> {
  factory $AboutTheHotelModelCopyWith(
          AboutTheHotelModel value, $Res Function(AboutTheHotelModel) then) =
      _$AboutTheHotelModelCopyWithImpl<$Res, AboutTheHotelModel>;
  @useResult
  $Res call({String description, List<String> peculiarities});
}

/// @nodoc
class _$AboutTheHotelModelCopyWithImpl<$Res, $Val extends AboutTheHotelModel>
    implements $AboutTheHotelModelCopyWith<$Res> {
  _$AboutTheHotelModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? peculiarities = null,
  }) {
    return _then(_value.copyWith(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      peculiarities: null == peculiarities
          ? _value.peculiarities
          : peculiarities // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AboutTheHotelModelImplCopyWith<$Res>
    implements $AboutTheHotelModelCopyWith<$Res> {
  factory _$$AboutTheHotelModelImplCopyWith(_$AboutTheHotelModelImpl value,
          $Res Function(_$AboutTheHotelModelImpl) then) =
      __$$AboutTheHotelModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String description, List<String> peculiarities});
}

/// @nodoc
class __$$AboutTheHotelModelImplCopyWithImpl<$Res>
    extends _$AboutTheHotelModelCopyWithImpl<$Res, _$AboutTheHotelModelImpl>
    implements _$$AboutTheHotelModelImplCopyWith<$Res> {
  __$$AboutTheHotelModelImplCopyWithImpl(_$AboutTheHotelModelImpl _value,
      $Res Function(_$AboutTheHotelModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? peculiarities = null,
  }) {
    return _then(_$AboutTheHotelModelImpl(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      peculiarities: null == peculiarities
          ? _value._peculiarities
          : peculiarities // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AboutTheHotelModelImpl implements _AboutTheHotelModel {
  const _$AboutTheHotelModelImpl(
      {required this.description, final List<String> peculiarities = const []})
      : _peculiarities = peculiarities;

  factory _$AboutTheHotelModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AboutTheHotelModelImplFromJson(json);

  @override
  final String description;
  final List<String> _peculiarities;
  @override
  @JsonKey()
  List<String> get peculiarities {
    if (_peculiarities is EqualUnmodifiableListView) return _peculiarities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_peculiarities);
  }

  @override
  String toString() {
    return 'AboutTheHotelModel(description: $description, peculiarities: $peculiarities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AboutTheHotelModelImpl &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._peculiarities, _peculiarities));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, description,
      const DeepCollectionEquality().hash(_peculiarities));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AboutTheHotelModelImplCopyWith<_$AboutTheHotelModelImpl> get copyWith =>
      __$$AboutTheHotelModelImplCopyWithImpl<_$AboutTheHotelModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AboutTheHotelModelImplToJson(
      this,
    );
  }
}

abstract class _AboutTheHotelModel implements AboutTheHotelModel {
  const factory _AboutTheHotelModel(
      {required final String description,
      final List<String> peculiarities}) = _$AboutTheHotelModelImpl;

  factory _AboutTheHotelModel.fromJson(Map<String, dynamic> json) =
      _$AboutTheHotelModelImpl.fromJson;

  @override
  String get description;
  @override
  List<String> get peculiarities;
  @override
  @JsonKey(ignore: true)
  _$$AboutTheHotelModelImplCopyWith<_$AboutTheHotelModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
