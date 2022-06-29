// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'comic_price_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ComicPriceDto _$ComicPriceDtoFromJson(Map<String, dynamic> json) {
  return _ComicPriceDto.fromJson(json);
}

/// @nodoc
mixin _$ComicPriceDto {
  String? get type => throw _privateConstructorUsedError;
  double? get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ComicPriceDtoCopyWith<ComicPriceDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComicPriceDtoCopyWith<$Res> {
  factory $ComicPriceDtoCopyWith(
          ComicPriceDto value, $Res Function(ComicPriceDto) then) =
      _$ComicPriceDtoCopyWithImpl<$Res>;
  $Res call({String? type, double? price});
}

/// @nodoc
class _$ComicPriceDtoCopyWithImpl<$Res>
    implements $ComicPriceDtoCopyWith<$Res> {
  _$ComicPriceDtoCopyWithImpl(this._value, this._then);

  final ComicPriceDto _value;
  // ignore: unused_field
  final $Res Function(ComicPriceDto) _then;

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
abstract class _$$_ComicPriceDtoCopyWith<$Res>
    implements $ComicPriceDtoCopyWith<$Res> {
  factory _$$_ComicPriceDtoCopyWith(
          _$_ComicPriceDto value, $Res Function(_$_ComicPriceDto) then) =
      __$$_ComicPriceDtoCopyWithImpl<$Res>;
  @override
  $Res call({String? type, double? price});
}

/// @nodoc
class __$$_ComicPriceDtoCopyWithImpl<$Res>
    extends _$ComicPriceDtoCopyWithImpl<$Res>
    implements _$$_ComicPriceDtoCopyWith<$Res> {
  __$$_ComicPriceDtoCopyWithImpl(
      _$_ComicPriceDto _value, $Res Function(_$_ComicPriceDto) _then)
      : super(_value, (v) => _then(v as _$_ComicPriceDto));

  @override
  _$_ComicPriceDto get _value => super._value as _$_ComicPriceDto;

  @override
  $Res call({
    Object? type = freezed,
    Object? price = freezed,
  }) {
    return _then(_$_ComicPriceDto(
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
class _$_ComicPriceDto extends _ComicPriceDto {
  const _$_ComicPriceDto({this.type, this.price}) : super._();

  factory _$_ComicPriceDto.fromJson(Map<String, dynamic> json) =>
      _$$_ComicPriceDtoFromJson(json);

  @override
  final String? type;
  @override
  final double? price;

  @override
  String toString() {
    return 'ComicPriceDto(type: $type, price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ComicPriceDto &&
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
  _$$_ComicPriceDtoCopyWith<_$_ComicPriceDto> get copyWith =>
      __$$_ComicPriceDtoCopyWithImpl<_$_ComicPriceDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ComicPriceDtoToJson(this);
  }
}

abstract class _ComicPriceDto extends ComicPriceDto {
  const factory _ComicPriceDto({final String? type, final double? price}) =
      _$_ComicPriceDto;
  const _ComicPriceDto._() : super._();

  factory _ComicPriceDto.fromJson(Map<String, dynamic> json) =
      _$_ComicPriceDto.fromJson;

  @override
  String? get type => throw _privateConstructorUsedError;
  @override
  double? get price => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ComicPriceDtoCopyWith<_$_ComicPriceDto> get copyWith =>
      throw _privateConstructorUsedError;
}
