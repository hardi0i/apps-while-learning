// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rooms_cubit_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RoomsCubitState {
  BaseStatus<dynamic> get status => throw _privateConstructorUsedError;
  List<RoomEntity> get rooms => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RoomsCubitStateCopyWith<RoomsCubitState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomsCubitStateCopyWith<$Res> {
  factory $RoomsCubitStateCopyWith(
          RoomsCubitState value, $Res Function(RoomsCubitState) then) =
      _$RoomsCubitStateCopyWithImpl<$Res, RoomsCubitState>;
  @useResult
  $Res call({BaseStatus<dynamic> status, List<RoomEntity> rooms});

  $BaseStatusCopyWith<dynamic, $Res> get status;
}

/// @nodoc
class _$RoomsCubitStateCopyWithImpl<$Res, $Val extends RoomsCubitState>
    implements $RoomsCubitStateCopyWith<$Res> {
  _$RoomsCubitStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? rooms = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BaseStatus<dynamic>,
      rooms: null == rooms
          ? _value.rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as List<RoomEntity>,
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
abstract class _$$RoomsCubitStateImplCopyWith<$Res>
    implements $RoomsCubitStateCopyWith<$Res> {
  factory _$$RoomsCubitStateImplCopyWith(_$RoomsCubitStateImpl value,
          $Res Function(_$RoomsCubitStateImpl) then) =
      __$$RoomsCubitStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BaseStatus<dynamic> status, List<RoomEntity> rooms});

  @override
  $BaseStatusCopyWith<dynamic, $Res> get status;
}

/// @nodoc
class __$$RoomsCubitStateImplCopyWithImpl<$Res>
    extends _$RoomsCubitStateCopyWithImpl<$Res, _$RoomsCubitStateImpl>
    implements _$$RoomsCubitStateImplCopyWith<$Res> {
  __$$RoomsCubitStateImplCopyWithImpl(
      _$RoomsCubitStateImpl _value, $Res Function(_$RoomsCubitStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? rooms = null,
  }) {
    return _then(_$RoomsCubitStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BaseStatus<dynamic>,
      rooms: null == rooms
          ? _value._rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as List<RoomEntity>,
    ));
  }
}

/// @nodoc

class _$RoomsCubitStateImpl implements _RoomsCubitState {
  const _$RoomsCubitStateImpl(
      {this.status = const BaseStatus.initial(),
      final List<RoomEntity> rooms = const []})
      : _rooms = rooms;

  @override
  @JsonKey()
  final BaseStatus<dynamic> status;
  final List<RoomEntity> _rooms;
  @override
  @JsonKey()
  List<RoomEntity> get rooms {
    if (_rooms is EqualUnmodifiableListView) return _rooms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rooms);
  }

  @override
  String toString() {
    return 'RoomsCubitState(status: $status, rooms: $rooms)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoomsCubitStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._rooms, _rooms));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_rooms));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RoomsCubitStateImplCopyWith<_$RoomsCubitStateImpl> get copyWith =>
      __$$RoomsCubitStateImplCopyWithImpl<_$RoomsCubitStateImpl>(
          this, _$identity);
}

abstract class _RoomsCubitState implements RoomsCubitState {
  const factory _RoomsCubitState(
      {final BaseStatus<dynamic> status,
      final List<RoomEntity> rooms}) = _$RoomsCubitStateImpl;

  @override
  BaseStatus<dynamic> get status;
  @override
  List<RoomEntity> get rooms;
  @override
  @JsonKey(ignore: true)
  _$$RoomsCubitStateImplCopyWith<_$RoomsCubitStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
