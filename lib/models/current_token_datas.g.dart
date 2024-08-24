// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_token_datas.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CurrentTokenDatasImpl _$$CurrentTokenDatasImplFromJson(
        Map<String, dynamic> json) =>
    _$CurrentTokenDatasImpl(
      currentTokenDatasV2: (json['current_token_datas_v2'] as List<dynamic>)
          .map((e) => CurrentTokenData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CurrentTokenDatasImplToJson(
        _$CurrentTokenDatasImpl instance) =>
    <String, dynamic>{
      'current_token_datas_v2': instance.currentTokenDatasV2,
    };

_$CurrentTokenDataImpl _$$CurrentTokenDataImplFromJson(
        Map<String, dynamic> json) =>
    _$CurrentTokenDataImpl(
      tokenDataId: json['token_data_id'] as String,
      tokenName: json['token_name'] as String,
      tokenUri: json['token_uri'] as String,
      tokenProperties: TokenProperties.fromJson(
          json['token_properties'] as Map<String, dynamic>),
      tokenStandard:
          $enumDecode(_$TokenStandardEnumMap, json['token_standard']),
      largestPropertyVersionV1:
          (json['largest_property_version_v1'] as num?)?.toInt(),
      maximum: (json['maximum'] as num?)?.toInt(),
      isFungibleV2: json['is_fungible_v2'] as bool?,
      supply: (json['supply'] as num).toInt(),
      lastTransactionVersion: (json['last_transaction_version'] as num).toInt(),
      lastTransactionTimestamp: json['last_transaction_timestamp'] as String,
      currentCollection: json['current_collection'] == null
          ? null
          : CurrentCollection.fromJson(
              json['current_collection'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CurrentTokenDataImplToJson(
        _$CurrentTokenDataImpl instance) =>
    <String, dynamic>{
      'token_data_id': instance.tokenDataId,
      'token_name': instance.tokenName,
      'token_uri': instance.tokenUri,
      'token_properties': instance.tokenProperties,
      'token_standard': _$TokenStandardEnumMap[instance.tokenStandard]!,
      'largest_property_version_v1': instance.largestPropertyVersionV1,
      'maximum': instance.maximum,
      'is_fungible_v2': instance.isFungibleV2,
      'supply': instance.supply,
      'last_transaction_version': instance.lastTransactionVersion,
      'last_transaction_timestamp': instance.lastTransactionTimestamp,
      'current_collection': instance.currentCollection,
    };

const _$TokenStandardEnumMap = {
  TokenStandard.v1: 'v1',
  TokenStandard.v2: 'v2',
};

_$TokenPropertiesImpl _$$TokenPropertiesImplFromJson(
        Map<String, dynamic> json) =>
    _$TokenPropertiesImpl(
      tokenBurnableByOwner: json['TOKEN_BURNABLE_BY_OWNER'] as String?,
      tokenPropertyMutatble: json['TOKEN_PROPERTY_MUTATBLE'] as String?,
    );

Map<String, dynamic> _$$TokenPropertiesImplToJson(
        _$TokenPropertiesImpl instance) =>
    <String, dynamic>{
      'TOKEN_BURNABLE_BY_OWNER': instance.tokenBurnableByOwner,
      'TOKEN_PROPERTY_MUTATBLE': instance.tokenPropertyMutatble,
    };

_$CurrentCollectionImpl _$$CurrentCollectionImplFromJson(
        Map<String, dynamic> json) =>
    _$CurrentCollectionImpl(
      collectionId: json['collection_id'] as String,
      collectionName: json['collection_name'] as String,
      creatorAddress: json['creator_address'] as String,
      uri: json['uri'] as String,
      currentSupply: (json['current_supply'] as num).toInt(),
    );

Map<String, dynamic> _$$CurrentCollectionImplToJson(
        _$CurrentCollectionImpl instance) =>
    <String, dynamic>{
      'collection_id': instance.collectionId,
      'collection_name': instance.collectionName,
      'creator_address': instance.creatorAddress,
      'uri': instance.uri,
      'current_supply': instance.currentSupply,
    };
