// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OrderEntity {
  String get hotelId => throw _privateConstructorUsedError;
  String get roomId => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  List<TouristEntity> get tourists => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrderEntityCopyWith<OrderEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderEntityCopyWith<$Res> {
  factory $OrderEntityCopyWith(
          OrderEntity value, $Res Function(OrderEntity) then) =
      _$OrderEntityCopyWithImpl<$Res, OrderEntity>;
  @useResult
  $Res call(
      {String hotelId,
      String roomId,
      String email,
      String phone,
      List<TouristEntity> tourists});
}

/// @nodoc
class _$OrderEntityCopyWithImpl<$Res, $Val extends OrderEntity>
    implements $OrderEntityCopyWith<$Res> {
  _$OrderEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hotelId = null,
    Object? roomId = null,
    Object? email = null,
    Object? phone = null,
    Object? tourists = null,
  }) {
    return _then(_value.copyWith(
      hotelId: null == hotelId
          ? _value.hotelId
          : hotelId // ignore: cast_nullable_to_non_nullable
              as String,
      roomId: null == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      tourists: null == tourists
          ? _value.tourists
          : tourists // ignore: cast_nullable_to_non_nullable
              as List<TouristEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderEntityImplCopyWith<$Res>
    implements $OrderEntityCopyWith<$Res> {
  factory _$$OrderEntityImplCopyWith(
          _$OrderEntityImpl value, $Res Function(_$OrderEntityImpl) then) =
      __$$OrderEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String hotelId,
      String roomId,
      String email,
      String phone,
      List<TouristEntity> tourists});
}

/// @nodoc
class __$$OrderEntityImplCopyWithImpl<$Res>
    extends _$OrderEntityCopyWithImpl<$Res, _$OrderEntityImpl>
    implements _$$OrderEntityImplCopyWith<$Res> {
  __$$OrderEntityImplCopyWithImpl(
      _$OrderEntityImpl _value, $Res Function(_$OrderEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hotelId = null,
    Object? roomId = null,
    Object? email = null,
    Object? phone = null,
    Object? tourists = null,
  }) {
    return _then(_$OrderEntityImpl(
      hotelId: null == hotelId
          ? _value.hotelId
          : hotelId // ignore: cast_nullable_to_non_nullable
              as String,
      roomId: null == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      tourists: null == tourists
          ? _value._tourists
          : tourists // ignore: cast_nullable_to_non_nullable
              as List<TouristEntity>,
    ));
  }
}

/// @nodoc

class _$OrderEntityImpl implements _OrderEntity {
  const _$OrderEntityImpl(
      {required this.hotelId,
      required this.roomId,
      required this.email,
      required this.phone,
      required final List<TouristEntity> tourists})
      : _tourists = tourists;

  @override
  final String hotelId;
  @override
  final String roomId;
  @override
  final String email;
  @override
  final String phone;
  final List<TouristEntity> _tourists;
  @override
  List<TouristEntity> get tourists {
    if (_tourists is EqualUnmodifiableListView) return _tourists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tourists);
  }

  @override
  String toString() {
    return 'OrderEntity(hotelId: $hotelId, roomId: $roomId, email: $email, phone: $phone, tourists: $tourists)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderEntityImpl &&
            (identical(other.hotelId, hotelId) || other.hotelId == hotelId) &&
            (identical(other.roomId, roomId) || other.roomId == roomId) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            const DeepCollectionEquality().equals(other._tourists, _tourists));
  }

  @override
  int get hashCode => Object.hash(runtimeType, hotelId, roomId, email, phone,
      const DeepCollectionEquality().hash(_tourists));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderEntityImplCopyWith<_$OrderEntityImpl> get copyWith =>
      __$$OrderEntityImplCopyWithImpl<_$OrderEntityImpl>(this, _$identity);
}

abstract class _OrderEntity implements OrderEntity {
  const factory _OrderEntity(
      {required final String hotelId,
      required final String roomId,
      required final String email,
      required final String phone,
      required final List<TouristEntity> tourists}) = _$OrderEntityImpl;

  @override
  String get hotelId;
  @override
  String get roomId;
  @override
  String get email;
  @override
  String get phone;
  @override
  List<TouristEntity> get tourists;
  @override
  @JsonKey(ignore: true)
  _$$OrderEntityImplCopyWith<_$OrderEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
