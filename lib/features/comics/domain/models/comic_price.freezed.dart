// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'comic_price.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ComicPrice _$ComicPriceFromJson(Map<String, dynamic> json) {
  return _ComicPrice.fromJson(json);
}

/// @nodoc
mixin _$ComicPrice {
  String? get type => throw _privateConstructorUsedError;
  double? get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ComicPriceCopyWith<ComicPrice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComicPriceCopyWith<$Res> {
  factory $ComicPriceCopyWith(
          ComicPrice value, $Res Function(ComicPrice) then) =
      _$ComicPriceCopyWithImpl<$Res>;
  $Res call({String? type, double? price});
}

/// @nodoc
class _$ComicPriceCopyWithImpl<$Res> implements $ComicPriceCopyWith<$Res> {
  _$ComicPriceCopyWithImpl(this._value, this._then);

  final ComicPrice _value;
  // ignore: unused_field
  final $Res Function(ComicPrice) _then;

  @override
  $Res call({
    Object? type = freezed,
    Object? price = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
abstract class _$$_ComicPriceCopyWith<$Res>
    implements $ComicPriceCopyWith<$Res> {
  factory _$$_ComicPriceCopyWith(
          _$_ComicPrice value, $Res Function(_$_ComicPrice) then) =
      __$$_ComicPriceCopyWithImpl<$Res>;
  @override
  $Res call({String? type, double? price});
}

/// @nodoc
class __$$_ComicPriceCopyWithImpl<$Res> extends _$ComicPriceCopyWithImpl<$Res>
    implements _$$_ComicPriceCopyWith<$Res> {
  __$$_ComicPriceCopyWithImpl(
      _$_ComicPrice _value, $Res Function(_$_ComicPrice) _then)
      : super(_value, (v) => _then(v as _$_ComicPrice));

  @override
  _$_ComicPrice get _value => super._value as _$_ComicPrice;

  @override
  $Res call({
    Object? type = freezed,
    Object? price = freezed,
  }) {
    return _then(_$_ComicPrice(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ComicPrice extends _ComicPrice {
  const _$_ComicPrice({this.type, this.price}) : super._();

  factory _$_ComicPrice.fromJson(Map<String, dynamic> json) =>
      _$$_ComicPriceFromJson(json);

  @override
  final String? type;
  @override
  final double? price;

  @override
  String toString() {
    return 'ComicPrice(type: $type, price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ComicPrice &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.price, price));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(price));

  @JsonKey(ignore: true)
  @override
  _$$_ComicPriceCopyWith<_$_ComicPrice> get copyWith =>
      __$$_ComicPriceCopyWithImpl<_$_ComicPrice>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ComicPriceToJson(this);
  }
}

abstract class _ComicPrice extends ComicPrice {
  const factory _ComicPrice({final String? type, final double? price}) =
      _$_ComicPrice;
  const _ComicPrice._() : super._();

  factory _ComicPrice.fromJson(Map<String, dynamic> json) =
      _$_ComicPrice.fromJson;

  @override
  String? get type => throw _privateConstructorUsedError;
  @override
  double? get price => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ComicPriceCopyWith<_$_ComicPrice> get copyWith =>
      throw _privateConstructorUsedError;
}
