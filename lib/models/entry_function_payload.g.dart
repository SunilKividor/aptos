// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entry_function_payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EntryFunctionPayloadImpl _$$EntryFunctionPayloadImplFromJson(
        Map<String, dynamic> json) =>
    _$EntryFunctionPayloadImpl(
      functionId: json['functionId'] as String,
      typeArguments: (json['typeArguments'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      arguments: json['arguments'] as List<dynamic>,
    );

Map<String, dynamic> _$$EntryFunctionPayloadImplToJson(
        _$EntryFunctionPayloadImpl instance) =>
    <String, dynamic>{
      'functionId': instance.functionId,
      'typeArguments': instance.typeArguments,
      'arguments': instance.arguments,
    };
