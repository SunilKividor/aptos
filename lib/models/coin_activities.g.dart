// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coin_activities.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CoinActivitiesImpl _$$CoinActivitiesImplFromJson(Map<String, dynamic> json) =>
    _$CoinActivitiesImpl(
      coinActivities: (json['coin_activities'] as List<dynamic>)
          .map((e) => CoinActivity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CoinActivitiesImplToJson(
        _$CoinActivitiesImpl instance) =>
    <String, dynamic>{
      'coin_activities': instance.coinActivities,
    };

_$CoinActivityImpl _$$CoinActivityImplFromJson(Map<String, dynamic> json) =>
    _$CoinActivityImpl(
      transactionTimestamp: json['transaction_timestamp'] as String,
      transactionVersion: (json['transaction_version'] as num).toInt(),
      amount: (json['amount'] as num).toInt(),
      activityType: json['activity_type'] as String,
      coinType: json['coin_type'] as String,
      isGasFee: json['is_gas_fee'] as bool,
      isTransactionSuccess: json['is_transaction_success'] as bool,
      eventAccountAddress: json['event_account_address'] as String,
      eventCreationNumber: (json['event_creation_number'] as num).toInt(),
      eventSequenceNumber: (json['event_sequence_number'] as num).toInt(),
      entryFunctionIdStr: json['entry_function_id_str'] as String?,
      blockHeight: (json['block_height'] as num).toInt(),
    );

Map<String, dynamic> _$$CoinActivityImplToJson(_$CoinActivityImpl instance) =>
    <String, dynamic>{
      'transaction_timestamp': instance.transactionTimestamp,
      'transaction_version': instance.transactionVersion,
      'amount': instance.amount,
      'activity_type': instance.activityType,
      'coin_type': instance.coinType,
      'is_gas_fee': instance.isGasFee,
      'is_transaction_success': instance.isTransactionSuccess,
      'event_account_address': instance.eventAccountAddress,
      'event_creation_number': instance.eventCreationNumber,
      'event_sequence_number': instance.eventSequenceNumber,
      'entry_function_id_str': instance.entryFunctionIdStr,
      'block_height': instance.blockHeight,
    };
