// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'grocery_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GroceryItem _$GroceryItemFromJson(Map<String, dynamic> json) {
  return _GroceryItem.fromJson(json);
}

/// @nodoc
mixin _$GroceryItem {
  String get name => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GroceryItemCopyWith<GroceryItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroceryItemCopyWith<$Res> {
  factory $GroceryItemCopyWith(
          GroceryItem value, $Res Function(GroceryItem) then) =
      _$GroceryItemCopyWithImpl<$Res, GroceryItem>;
  @useResult
  $Res call({String name, int count, double price});
}

/// @nodoc
class _$GroceryItemCopyWithImpl<$Res, $Val extends GroceryItem>
    implements $GroceryItemCopyWith<$Res> {
  _$GroceryItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? count = null,
    Object? price = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GroceryItemImplCopyWith<$Res>
    implements $GroceryItemCopyWith<$Res> {
  factory _$$GroceryItemImplCopyWith(
          _$GroceryItemImpl value, $Res Function(_$GroceryItemImpl) then) =
      __$$GroceryItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, int count, double price});
}

/// @nodoc
class __$$GroceryItemImplCopyWithImpl<$Res>
    extends _$GroceryItemCopyWithImpl<$Res, _$GroceryItemImpl>
    implements _$$GroceryItemImplCopyWith<$Res> {
  __$$GroceryItemImplCopyWithImpl(
      _$GroceryItemImpl _value, $Res Function(_$GroceryItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? count = null,
    Object? price = null,
  }) {
    return _then(_$GroceryItemImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GroceryItemImpl extends _GroceryItem {
  _$GroceryItemImpl({required this.name, this.count = 0, this.price = 1.99})
      : super._();

  factory _$GroceryItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$GroceryItemImplFromJson(json);

  @override
  final String name;
  @override
  @JsonKey()
  final int count;
  @override
  @JsonKey()
  final double price;

  @override
  String toString() {
    return 'GroceryItem(name: $name, count: $count, price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroceryItemImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, count, price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GroceryItemImplCopyWith<_$GroceryItemImpl> get copyWith =>
      __$$GroceryItemImplCopyWithImpl<_$GroceryItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GroceryItemImplToJson(
      this,
    );
  }
}

abstract class _GroceryItem extends GroceryItem {
  factory _GroceryItem(
      {required final String name,
      final int count,
      final double price}) = _$GroceryItemImpl;
  _GroceryItem._() : super._();

  factory _GroceryItem.fromJson(Map<String, dynamic> json) =
      _$GroceryItemImpl.fromJson;

  @override
  String get name;
  @override
  int get count;
  @override
  double get price;
  @override
  @JsonKey(ignore: true)
  _$$GroceryItemImplCopyWith<_$GroceryItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
