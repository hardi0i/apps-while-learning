// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hotel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HotelModel _$HotelModelFromJson(Map<String, dynamic> json) {
  return _HotelModel.fromJson(json);
}

/// @nodoc
mixin _$HotelModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get adress => throw _privateConstructorUsedError;
  @JsonKey(name: 'price_for_it')
  String get priceForIt => throw _privateConstructorUsedError;
  @JsonKey(name: 'rating_name')
  String get ratingName => throw _privateConstructorUsedError;
  @JsonKey(name: 'minimal_price')
  num get minimalPrice => throw _privateConstructorUsedError;
  int get rating => throw _privateConstructorUsedError;
  @JsonKey(name: 'about_the_hotel')
  AboutTheHotelModel get aboutTheHotel => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_urls')
  List<String> get imageUrls => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HotelModelCopyWith<HotelModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HotelModelCopyWith<$Res> {
  factory $HotelModelCopyWith(
          HotelModel value, $Res Function(HotelModel) then) =
      _$HotelModelCopyWithImpl<$Res, HotelModel>;
  @useResult
  $Res call(
      {int id,
      String name,
      String adress,
      @JsonKey(name: 'price_for_it') String priceForIt,
      @JsonKey(name: 'rating_name') String ratingName,
      @JsonKey(name: 'minimal_price') num minimalPrice,
      int rating,
      @JsonKey(name: 'about_the_hotel') AboutTheHotelModel aboutTheHotel,
      @JsonKey(name: 'image_urls') List<String> imageUrls});

  $AboutTheHotelModelCopyWith<$Res> get aboutTheHotel;
}

/// @nodoc
class _$HotelModelCopyWithImpl<$Res, $Val extends HotelModel>
    implements $HotelModelCopyWith<$Res> {
  _$HotelModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? adress = null,
    Object? priceForIt = null,
    Object? ratingName = null,
    Object? minimalPrice = null,
    Object? rating = null,
    Object? aboutTheHotel = null,
    Object? imageUrls = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      adress: null == adress
          ? _value.adress
          : adress // ignore: cast_nullable_to_non_nullable
              as String,
      priceForIt: null == priceForIt
          ? _value.priceForIt
          : priceForIt // ignore: cast_nullable_to_non_nullable
              as String,
      ratingName: null == ratingName
          ? _value.ratingName
          : ratingName // ignore: cast_nullable_to_non_nullable
              as String,
      minimalPrice: null == minimalPrice
          ? _value.minimalPrice
          : minimalPrice // ignore: cast_nullable_to_non_nullable
              as num,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      aboutTheHotel: null == aboutTheHotel
          ? _value.aboutTheHotel
          : aboutTheHotel // ignore: cast_nullable_to_non_nullable
              as AboutTheHotelModel,
      imageUrls: null == imageUrls
          ? _value.imageUrls
          : imageUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AboutTheHotelModelCopyWith<$Res> get aboutTheHotel {
    return $AboutTheHotelModelCopyWith<$Res>(_value.aboutTheHotel, (value) {
      return _then(_value.copyWith(aboutTheHotel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HotelModelImplCopyWith<$Res>
    implements $HotelModelCopyWith<$Res> {
  factory _$$HotelModelImplCopyWith(
          _$HotelModelImpl value, $Res Function(_$HotelModelImpl) then) =
      __$$HotelModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String adress,
      @JsonKey(name: 'price_for_it') String priceForIt,
      @JsonKey(name: 'rating_name') String ratingName,
      @JsonKey(name: 'minimal_price') num minimalPrice,
      int rating,
      @JsonKey(name: 'about_the_hotel') AboutTheHotelModel aboutTheHotel,
      @JsonKey(name: 'image_urls') List<String> imageUrls});

  @override
  $AboutTheHotelModelCopyWith<$Res> get aboutTheHotel;
}

/// @nodoc
class __$$HotelModelImplCopyWithImpl<$Res>
    extends _$HotelModelCopyWithImpl<$Res, _$HotelModelImpl>
    implements _$$HotelModelImplCopyWith<$Res> {
  __$$HotelModelImplCopyWithImpl(
      _$HotelModelImpl _value, $Res Function(_$HotelModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? adress = null,
    Object? priceForIt = null,
    Object? ratingName = null,
    Object? minimalPrice = null,
    Object? rating = null,
    Object? aboutTheHotel = null,
    Object? imageUrls = null,
  }) {
    return _then(_$HotelModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      adress: null == adress
          ? _value.adress
          : adress // ignore: cast_nullable_to_non_nullable
              as String,
      priceForIt: null == priceForIt
          ? _value.priceForIt
          : priceForIt // ignore: cast_nullable_to_non_nullable
              as String,
      ratingName: null == ratingName
          ? _value.ratingName
          : ratingName // ignore: cast_nullable_to_non_nullable
              as String,
      minimalPrice: null == minimalPrice
          ? _value.minimalPrice
          : minimalPrice // ignore: cast_nullable_to_non_nullable
              as num,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      aboutTheHotel: null == aboutTheHotel
          ? _value.aboutTheHotel
          : aboutTheHotel // ignore: cast_nullable_to_non_nullable
              as AboutTheHotelModel,
      imageUrls: null == imageUrls
          ? _value._imageUrls
          : imageUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HotelModelImpl implements _HotelModel {
  const _$HotelModelImpl(
      {required this.id,
      required this.name,
      required this.adress,
      @JsonKey(name: 'price_for_it') required this.priceForIt,
      @JsonKey(name: 'rating_name') required this.ratingName,
      @JsonKey(name: 'minimal_price') required this.minimalPrice,
      required this.rating,
      @JsonKey(name: 'about_the_hotel') required this.aboutTheHotel,
      @JsonKey(name: 'image_urls') final List<String> imageUrls = const []})
      : _imageUrls = imageUrls;

  factory _$HotelModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HotelModelImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String adress;
  @override
  @JsonKey(name: 'price_for_it')
  final String priceForIt;
  @override
  @JsonKey(name: 'rating_name')
  final String ratingName;
  @override
  @JsonKey(name: 'minimal_price')
  final num minimalPrice;
  @override
  final int rating;
  @override
  @JsonKey(name: 'about_the_hotel')
  final AboutTheHotelModel aboutTheHotel;
  final List<String> _imageUrls;
  @override
  @JsonKey(name: 'image_urls')
  List<String> get imageUrls {
    if (_imageUrls is EqualUnmodifiableListView) return _imageUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_imageUrls);
  }

  @override
  String toString() {
    return 'HotelModel(id: $id, name: $name, adress: $adress, priceForIt: $priceForIt, ratingName: $ratingName, minimalPrice: $minimalPrice, rating: $rating, aboutTheHotel: $aboutTheHotel, imageUrls: $imageUrls)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HotelModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.adress, adress) || other.adress == adress) &&
            (identical(other.priceForIt, priceForIt) ||
                other.priceForIt == priceForIt) &&
            (identical(other.ratingName, ratingName) ||
                other.ratingName == ratingName) &&
            (identical(other.minimalPrice, minimalPrice) ||
                other.minimalPrice == minimalPrice) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.aboutTheHotel, aboutTheHotel) ||
                other.aboutTheHotel == aboutTheHotel) &&
            const DeepCollectionEquality()
                .equals(other._imageUrls, _imageUrls));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      adress,
      priceForIt,
      ratingName,
      minimalPrice,
      rating,
      aboutTheHotel,
      const DeepCollectionEquality().hash(_imageUrls));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HotelModelImplCopyWith<_$HotelModelImpl> get copyWith =>
      __$$HotelModelImplCopyWithImpl<_$HotelModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HotelModelImplToJson(
      this,
    );
  }
}

abstract class _HotelModel implements HotelModel {
  const factory _HotelModel(
          {required final int id,
          required final String name,
          required final String adress,
          @JsonKey(name: 'price_for_it') required final String priceForIt,
          @JsonKey(name: 'rating_name') required final String ratingName,
          @JsonKey(name: 'minimal_price') required final num minimalPrice,
          required final int rating,
          @JsonKey(name: 'about_the_hotel')
          required final AboutTheHotelModel aboutTheHotel,
          @JsonKey(name: 'image_urls') final List<String> imageUrls}) =
      _$HotelModelImpl;

  factory _HotelModel.fromJson(Map<String, dynamic> json) =
      _$HotelModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get adress;
  @override
  @JsonKey(name: 'price_for_it')
  String get priceForIt;
  @override
  @JsonKey(name: 'rating_name')
  String get ratingName;
  @override
  @JsonKey(name: 'minimal_price')
  num get minimalPrice;
  @override
  int get rating;
  @override
  @JsonKey(name: 'about_the_hotel')
  AboutTheHotelModel get aboutTheHotel;
  @override
  @JsonKey(name: 'image_urls')
  List<String> get imageUrls;
  @override
  @JsonKey(ignore: true)
  _$$HotelModelImplCopyWith<_$HotelModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
