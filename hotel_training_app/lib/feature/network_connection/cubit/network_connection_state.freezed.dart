// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'network_connection_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NetworkConnectionState {
  BaseStatus<dynamic> get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NetworkConnectionStateCopyWith<NetworkConnectionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetworkConnectionStateCopyWith<$Res> {
  factory $NetworkConnectionStateCopyWith(NetworkConnectionState value,
          $Res Function(NetworkConnectionState) then) =
      _$NetworkConnectionStateCopyWithImpl<$Res, NetworkConnectionState>;
  @useResult
  $Res call({BaseStatus<dynamic> status});

  $BaseStatusCopyWith<dynamic, $Res> get status;
}

/// @nodoc
class _$NetworkConnectionStateCopyWithImpl<$Res,
        $Val extends NetworkConnectionState>
    implements $NetworkConnectionStateCopyWith<$Res> {
  _$NetworkConnectionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BaseStatus<dynamic>,
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
abstract class _$$NetworkConnectionStateImplCopyWith<$Res>
    implements $NetworkConnectionStateCopyWith<$Res> {
  factory _$$NetworkConnectionStateImplCopyWith(
          _$NetworkConnectionStateImpl value,
          $Res Function(_$NetworkConnectionStateImpl) then) =
      __$$NetworkConnectionStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BaseStatus<dynamic> status});

  @override
  $BaseStatusCopyWith<dynamic, $Res> get status;
}

/// @nodoc
class __$$NetworkConnectionStateImplCopyWithImpl<$Res>
    extends _$NetworkConnectionStateCopyWithImpl<$Res,
        _$NetworkConnectionStateImpl>
    implements _$$NetworkConnectionStateImplCopyWith<$Res> {
  __$$NetworkConnectionStateImplCopyWithImpl(
      _$NetworkConnectionStateImpl _value,
      $Res Function(_$NetworkConnectionStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$NetworkConnectionStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BaseStatus<dynamic>,
    ));
  }
}

/// @nodoc

class _$NetworkConnectionStateImpl implements _NetworkConnectionState {
  const _$NetworkConnectionStateImpl(
      {this.status = const BaseStatus.initial()});

  @override
  @JsonKey()
  final BaseStatus<dynamic> status;

  @override
  String toString() {
    return 'NetworkConnectionState(status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NetworkConnectionStateImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NetworkConnectionStateImplCopyWith<_$NetworkConnectionStateImpl>
      get copyWith => __$$NetworkConnectionStateImplCopyWithImpl<
          _$NetworkConnectionStateImpl>(this, _$identity);
}

abstract class _NetworkConnectionState implements NetworkConnectionState {
  const factory _NetworkConnectionState({final BaseStatus<dynamic> status}) =
      _$NetworkConnectionStateImpl;

  @override
  BaseStatus<dynamic> get status;
  @override
  @JsonKey(ignore: true)
  _$$NetworkConnectionStateImplCopyWith<_$NetworkConnectionStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
