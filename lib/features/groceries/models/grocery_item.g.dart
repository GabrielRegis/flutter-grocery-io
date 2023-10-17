// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'grocery_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GroceryItemImpl _$$GroceryItemImplFromJson(Map<String, dynamic> json) =>
    _$GroceryItemImpl(
      name: json['name'] as String,
      count: json['count'] as int? ?? 0,
      price: (json['price'] as num?)?.toDouble() ?? 1.99,
    );

Map<String, dynamic> _$$GroceryItemImplToJson(_$GroceryItemImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'count': instance.count,
      'price': instance.price,
    };
