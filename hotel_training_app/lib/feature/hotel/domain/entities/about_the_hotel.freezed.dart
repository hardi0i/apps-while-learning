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

/// @nodoc
mixin _$AboutTheHotelEnity {
  String get description => throw _privateConstructorUsedError;
  List<String> get peculiarities => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AboutTheHotelEnityCopyWith<AboutTheHotelEnity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AboutTheHotelEnityCopyWith<$Res> {
  factory $AboutTheHotelEnityCopyWith(
          AboutTheHotelEnity value, $Res Function(AboutTheHotelEnity) then) =
      _$AboutTheHotelEnityCopyWithImpl<$Res, AboutTheHotelEnity>;
  @useResult
  $Res call({String description, List<String> peculiarities});
}

/// @nodoc
class _$AboutTheHotelEnityCopyWithImpl<$Res, $Val extends AboutTheHotelEnity>
    implements $AboutTheHotelEnityCopyWith<$Res> {
  _$AboutTheHotelEnityCopyWithImpl(this._value, this._then);

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
abstract class _$$AboutTheHotelEnityImplCopyWith<$Res>
    implements $AboutTheHotelEnityCopyWith<$Res> {
  factory _$$AboutTheHotelEnityImplCopyWith(_$AboutTheHotelEnityImpl value,
          $Res Function(_$AboutTheHotelEnityImpl) then) =
      __$$AboutTheHotelEnityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String description, List<String> peculiarities});
}

/// @nodoc
class __$$AboutTheHotelEnityImplCopyWithImpl<$Res>
    extends _$AboutTheHotelEnityCopyWithImpl<$Res, _$AboutTheHotelEnityImpl>
    implements _$$AboutTheHotelEnityImplCopyWith<$Res> {
  __$$AboutTheHotelEnityImplCopyWithImpl(_$AboutTheHotelEnityImpl _value,
      $Res Function(_$AboutTheHotelEnityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? peculiarities = null,
  }) {
    return _then(_$AboutTheHotelEnityImpl(
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

class _$AboutTheHotelEnityImpl implements _AboutTheHotelEnity {
  const _$AboutTheHotelEnityImpl(
      {required this.description, final List<String> peculiarities = const []})
      : _peculiarities = peculiarities;

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
    return 'AboutTheHotelEnity(description: $description, peculiarities: $peculiarities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AboutTheHotelEnityImpl &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._peculiarities, _peculiarities));
  }

  @override
  int get hashCode => Object.hash(runtimeType, description,
      const DeepCollectionEquality().hash(_peculiarities));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AboutTheHotelEnityImplCopyWith<_$AboutTheHotelEnityImpl> get copyWith =>
      __$$AboutTheHotelEnityImplCopyWithImpl<_$AboutTheHotelEnityImpl>(
          this, _$identity);
}

abstract class _AboutTheHotelEnity implements AboutTheHotelEnity {
  const factory _AboutTheHotelEnity(
      {required final String description,
      final List<String> peculiarities}) = _$AboutTheHotelEnityImpl;

  @override
  String get description;
  @override
  List<String> get peculiarities;
  @override
  @JsonKey(ignore: true)
  _$$AboutTheHotelEnityImplCopyWith<_$AboutTheHotelEnityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
