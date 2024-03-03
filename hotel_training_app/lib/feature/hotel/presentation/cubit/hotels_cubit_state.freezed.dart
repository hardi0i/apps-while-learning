// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hotels_cubit_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HotelsCubitState {
  BaseStatus<dynamic> get status => throw _privateConstructorUsedError;
  List<HotelEntity> get hotels => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HotelsCubitStateCopyWith<HotelsCubitState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HotelsCubitStateCopyWith<$Res> {
  factory $HotelsCubitStateCopyWith(
          HotelsCubitState value, $Res Function(HotelsCubitState) then) =
      _$HotelsCubitStateCopyWithImpl<$Res, HotelsCubitState>;
  @useResult
  $Res call({BaseStatus<dynamic> status, List<HotelEntity> hotels});

  $BaseStatusCopyWith<dynamic, $Res> get status;
}

/// @nodoc
class _$HotelsCubitStateCopyWithImpl<$Res, $Val extends HotelsCubitState>
    implements $HotelsCubitStateCopyWith<$Res> {
  _$HotelsCubitStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? hotels = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BaseStatus<dynamic>,
      hotels: null == hotels
          ? _value.hotels
          : hotels // ignore: cast_nullable_to_non_nullable
              as List<HotelEntity>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BaseStatusCopyWith<dynamic, $Res> get status {
    return $BaseStatusCopyWith<dynamic, $Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HotelsCubitStateImplCopyWith<$Res>
    implements $HotelsCubitStateCopyWith<$Res> {
  factory _$$HotelsCubitStateImplCopyWith(_$HotelsCubitStateImpl value,
          $Res Function(_$HotelsCubitStateImpl) then) =
      __$$HotelsCubitStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BaseStatus<dynamic> status, List<HotelEntity> hotels});

  @override
  $BaseStatusCopyWith<dynamic, $Res> get status;
}

/// @nodoc
class __$$HotelsCubitStateImplCopyWithImpl<$Res>
    extends _$HotelsCubitStateCopyWithImpl<$Res, _$HotelsCubitStateImpl>
    implements _$$HotelsCubitStateImplCopyWith<$Res> {
  __$$HotelsCubitStateImplCopyWithImpl(_$HotelsCubitStateImpl _value,
      $Res Function(_$HotelsCubitStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? hotels = null,
  }) {
    return _then(_$HotelsCubitStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BaseStatus<dynamic>,
      hotels: null == hotels
          ? _value._hotels
          : hotels // ignore: cast_nullable_to_non_nullable
              as List<HotelEntity>,
    ));
  }
}

/// @nodoc

class _$HotelsCubitStateImpl implements _HotelsCubitState {
  const _$HotelsCubitStateImpl(
      {this.status = const BaseStatus.initial(),
      final List<HotelEntity> hotels = const []})
      : _hotels = hotels;

  @override
  @JsonKey()
  final BaseStatus<dynamic> status;
  final List<HotelEntity> _hotels;
  @override
  @JsonKey()
  List<HotelEntity> get hotels {
    if (_hotels is EqualUnmodifiableListView) return _hotels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_hotels);
  }

  @override
  String toString() {
    return 'HotelsCubitState(status: $status, hotels: $hotels)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HotelsCubitStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._hotels, _hotels));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_hotels));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HotelsCubitStateImplCopyWith<_$HotelsCubitStateImpl> get copyWith =>
      __$$HotelsCubitStateImplCopyWithImpl<_$HotelsCubitStateImpl>(
          this, _$identity);
}

abstract class _HotelsCubitState implements HotelsCubitState {
  const factory _HotelsCubitState(
      {final BaseStatus<dynamic> status,
      final List<HotelEntity> hotels}) = _$HotelsCubitStateImpl;

  @override
  BaseStatus<dynamic> get status;
  @override
  List<HotelEntity> get hotels;
  @override
  @JsonKey(ignore: true)
  _$$HotelsCubitStateImplCopyWith<_$HotelsCubitStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
