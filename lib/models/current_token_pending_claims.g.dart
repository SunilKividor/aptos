// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_token_pending_claims.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CurrentTokenPendingClaimsImpl _$$CurrentTokenPendingClaimsImplFromJson(
        Map<String, dynamic> json) =>
    _$CurrentTokenPendingClaimsImpl(
      currentTokenPendingClaims: (json['current_token_pending_claims']
              as List<dynamic>)
          .map((e) => CurrentTokenPending.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CurrentTokenPendingClaimsImplToJson(
        _$CurrentTokenPendingClaimsImpl instance) =>
    <String, dynamic>{
      'current_token_pending_claims': instance.currentTokenPendingClaims,
    };

_$CurrentTokenPendingImpl _$$CurrentTokenPendingImplFromJson(
        Map<String, dynamic> json) =>
    _$CurrentTokenPendingImpl(
      fromAddress: json['from_address'] as String,
      toAddress: json['to_address'] as String,
      creatorAddress: json['creator_address'] as String,
      collectionName: json['collection_name'] as String,
      name: json['name'] as String,
      propertyVersion: (json['property_version'] as num).toInt(),
      amount: (json['amount'] as num).toInt(),
      currentCollectionData: CurrentCollectionData.fromJson(
          json['current_collection_data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CurrentTokenPendingImplToJson(
        _$CurrentTokenPendingImpl instance) =>
    <String, dynamic>{
      'from_address': instance.fromAddress,
      'to_address': instance.toAddress,
      'creator_address': instance.creatorAddress,
      'collection_name': instance.collectionName,
      'name': instance.name,
      'property_version': instance.propertyVersion,
      'amount': instance.amount,
      'current_collection_data': instance.currentCollectionData,
    };

_$CurrentCollectionDataImpl _$$CurrentCollectionDataImplFromJson(
        Map<String, dynamic> json) =>
    _$CurrentCollectionDataImpl(
      collectionDataIdHash: json['collection_data_id_hash'] as String,
      collectionName: json['collection_name'] as String,
      description: json['description'] as String,
      lastTransactionVersion: (json['last_transaction_version'] as num).toInt(),
      metadataUri: json['metadata_uri'] as String,
      supply: (json['supply'] as num).toInt(),
    );

Map<String, dynamic> _$$CurrentCollectionDataImplToJson(
        _$CurrentCollectionDataImpl instance) =>
    <String, dynamic>{
      'collection_data_id_hash': instance.collectionDataIdHash,
      'collection_name': instance.collectionName,
      'description': instance.description,
      'last_transaction_version': instance.lastTransactionVersion,
      'metadata_uri': instance.metadataUri,
      'supply': instance.supply,
    };
