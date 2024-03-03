// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reservation_cubit_states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ReservationCubitState {
  BaseStatus<dynamic> get status => throw _privateConstructorUsedError;
  List<ReservationEntity> get reservation => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReservationCubitStateCopyWith<ReservationCubitState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReservationCubitStateCopyWith<$Res> {
  factory $ReservationCubitStateCopyWith(ReservationCubitState value,
          $Res Function(ReservationCubitState) then) =
      _$ReservationCubitStateCopyWithImpl<$Res, ReservationCubitState>;
  @useResult
  $Res call({BaseStatus<dynamic> status, List<ReservationEntity> reservation});

  $BaseStatusCopyWith<dynamic, $Res> get status;
}

/// @nodoc
class _$ReservationCubitStateCopyWithImpl<$Res,
        $Val extends ReservationCubitState>
    implements $ReservationCubitStateCopyWith<$Res> {
  _$ReservationCubitStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? reservation = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BaseStatus<dynamic>,
      reservation: null == reservation
          ? _value.reservation
          : reservation // ignore: cast_nullable_to_non_nullable
              as List<ReservationEntity>,
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
abstract class _$$ReservationCubitStateImplCopyWith<$Res>
    implements $ReservationCubitStateCopyWith<$Res> {
  factory _$$ReservationCubitStateImplCopyWith(
          _$ReservationCubitStateImpl value,
          $Res Function(_$ReservationCubitStateImpl) then) =
      __$$ReservationCubitStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BaseStatus<dynamic> status, List<ReservationEntity> reservation});

  @override
  $BaseStatusCopyWith<dynamic, $Res> get status;
}

/// @nodoc
class __$$ReservationCubitStateImplCopyWithImpl<$Res>
    extends _$ReservationCubitStateCopyWithImpl<$Res,
        _$ReservationCubitStateImpl>
    implements _$$ReservationCubitStateImplCopyWith<$Res> {
  __$$ReservationCubitStateImplCopyWithImpl(_$ReservationCubitStateImpl _value,
      $Res Function(_$ReservationCubitStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? reservation = null,
  }) {
    return _then(_$ReservationCubitStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BaseStatus<dynamic>,
      reservation: null == reservation
          ? _value._reservation
          : reservation // ignore: cast_nullable_to_non_nullable
              as List<ReservationEntity>,
    ));
  }
}

/// @nodoc

class _$ReservationCubitStateImpl implements _ReservationCubitState {
  const _$ReservationCubitStateImpl(
      {this.status = const BaseStatus.initial(),
      final List<ReservationEntity> reservation = const []})
      : _reservation = reservation;

  @override
  @JsonKey()
  final BaseStatus<dynamic> status;
  final List<ReservationEntity> _reservation;
  @override
  @JsonKey()
  List<ReservationEntity> get reservation {
    if (_reservation is EqualUnmodifiableListView) return _reservation;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reservation);
  }

  @override
  String toString() {
    return 'ReservationCubitState(status: $status, reservation: $reservation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReservationCubitStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._reservation, _reservation));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_reservation));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReservationCubitStateImplCopyWith<_$ReservationCubitStateImpl>
      get copyWith => __$$ReservationCubitStateImplCopyWithImpl<
          _$ReservationCubitStateImpl>(this, _$identity);
}

abstract class _ReservationCubitState implements ReservationCubitState {
  const factory _ReservationCubitState(
      {final BaseStatus<dynamic> status,
      final List<ReservationEntity> reservation}) = _$ReservationCubitStateImpl;

  @override
  BaseStatus<dynamic> get status;
  @override
  List<ReservationEntity> get reservation;
  @override
  @JsonKey(ignore: true)
  _$$ReservationCubitStateImplCopyWith<_$ReservationCubitStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
