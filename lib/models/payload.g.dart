// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PayloadImpl _$$PayloadImplFromJson(Map<String, dynamic> json) =>
    _$PayloadImpl(
      type: json['type'] as String,
      function: json['function'] as String,
      typeArguments: (json['type_arguments'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      arguments: json['arguments'] as List<dynamic>,
    );

Map<String, dynamic> _$$PayloadImplToJson(_$PayloadImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'function': instance.function,
      'type_arguments': instance.typeArguments,
      'arguments': instance.arguments,
    };
