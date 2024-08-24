// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AccountDataImpl _$$AccountDataImplFromJson(Map<String, dynamic> json) =>
    _$AccountDataImpl(
      sequenceNumber: json['sequence_number'] as String,
      authenticationKey: json['authentication_key'] as String,
    );

Map<String, dynamic> _$$AccountDataImplToJson(_$AccountDataImpl instance) =>
    <String, dynamic>{
      'sequence_number': instance.sequenceNumber,
      'authentication_key': instance.authenticationKey,
    };
