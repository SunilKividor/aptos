// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signature.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SignatureImpl _$$SignatureImplFromJson(Map<String, dynamic> json) =>
    _$SignatureImpl(
      type: json['type'] as String,
      publicKey: json['public_key'] as String,
      signature: json['signature'] as String,
    );

Map<String, dynamic> _$$SignatureImplToJson(_$SignatureImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'public_key': instance.publicKey,
      'signature': instance.signature,
    };
