// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'form_manager_cubit_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FormManagerCubitState {
  BaseStatus<dynamic> get status => throw _privateConstructorUsedError;
  List<FormCubit> get formCubitList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FormManagerCubitStateCopyWith<FormManagerCubitState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormManagerCubitStateCopyWith<$Res> {
  factory $FormManagerCubitStateCopyWith(FormManagerCubitState value,
          $Res Function(FormManagerCubitState) then) =
      _$FormManagerCubitStateCopyWithImpl<$Res, FormManagerCubitState>;
  @useResult
  $Res call({BaseStatus<dynamic> status, List<FormCubit> formCubitList});

  $BaseStatusCopyWith<dynamic, $Res> get status;
}

/// @nodoc
class _$FormManagerCubitStateCopyWithImpl<$Res,
        $Val extends FormManagerCubitState>
    implements $FormManagerCubitStateCopyWith<$Res> {
  _$FormManagerCubitStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? formCubitList = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BaseStatus<dynamic>,
      formCubitList: null == formCubitList
          ? _value.formCubitList
          : formCubitList // ignore: cast_nullable_to_non_nullable
              as List<FormCubit>,
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
abstract class _$$FormManagerCubitStateImplCopyWith<$Res>
    implements $FormManagerCubitStateCopyWith<$Res> {
  factory _$$FormManagerCubitStateImplCopyWith(
          _$FormManagerCubitStateImpl value,
          $Res Function(_$FormManagerCubitStateImpl) then) =
      __$$FormManagerCubitStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BaseStatus<dynamic> status, List<FormCubit> formCubitList});

  @override
  $BaseStatusCopyWith<dynamic, $Res> get status;
}

/// @nodoc
class __$$FormManagerCubitStateImplCopyWithImpl<$Res>
    extends _$FormManagerCubitStateCopyWithImpl<$Res,
        _$FormManagerCubitStateImpl>
    implements _$$FormManagerCubitStateImplCopyWith<$Res> {
  __$$FormManagerCubitStateImplCopyWithImpl(_$FormManagerCubitStateImpl _value,
      $Res Function(_$FormManagerCubitStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? formCubitList = null,
  }) {
    return _then(_$FormManagerCubitStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BaseStatus<dynamic>,
      formCubitList: null == formCubitList
          ? _value._formCubitList
          : formCubitList // ignore: cast_nullable_to_non_nullable
              as List<FormCubit>,
    ));
  }
}

/// @nodoc

class _$FormManagerCubitStateImpl implements _FormManagerCubitState {
  const _$FormManagerCubitStateImpl(
      {this.status = const BaseStatus.initial(),
      final List<FormCubit> formCubitList = const []})
      : _formCubitList = formCubitList;

  @override
  @JsonKey()
  final BaseStatus<dynamic> status;
  final List<FormCubit> _formCubitList;
  @override
  @JsonKey()
  List<FormCubit> get formCubitList {
    if (_formCubitList is EqualUnmodifiableListView) return _formCubitList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_formCubitList);
  }

  @override
  String toString() {
    return 'FormManagerCubitState(status: $status, formCubitList: $formCubitList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormManagerCubitStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._formCubitList, _formCubitList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_formCubitList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FormManagerCubitStateImplCopyWith<_$FormManagerCubitStateImpl>
      get copyWith => __$$FormManagerCubitStateImplCopyWithImpl<
          _$FormManagerCubitStateImpl>(this, _$identity);
}

abstract class _FormManagerCubitState implements FormManagerCubitState {
  const factory _FormManagerCubitState(
      {final BaseStatus<dynamic> status,
      final List<FormCubit> formCubitList}) = _$FormManagerCubitStateImpl;

  @override
  BaseStatus<dynamic> get status;
  @override
  List<FormCubit> get formCubitList;
  @override
  @JsonKey(ignore: true)
  _$$FormManagerCubitStateImplCopyWith<_$FormManagerCubitStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
