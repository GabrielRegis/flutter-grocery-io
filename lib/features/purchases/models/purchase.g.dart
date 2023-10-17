// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'purchase.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PurchaseImpl _$$PurchaseImplFromJson(Map<String, dynamic> json) =>
    _$PurchaseImpl(
      date: DateTime.parse(json['date'] as String),
      items: (json['items'] as List<dynamic>)
          .map((e) => GroceryItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      grantTotal: (json['grantTotal'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$PurchaseImplToJson(_$PurchaseImpl instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'items': instance.items,
      'grantTotal': instance.grantTotal,
    };
