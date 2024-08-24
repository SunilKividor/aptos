// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_nfts.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AccountNFTsImpl _$$AccountNFTsImplFromJson(Map<String, dynamic> json) =>
    _$AccountNFTsImpl(
      currentTokenOwnerships:
          (json['current_token_ownerships'] as List<dynamic>)
              .map((e) => AccountNFT.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$$AccountNFTsImplToJson(_$AccountNFTsImpl instance) =>
    <String, dynamic>{
      'current_token_ownerships': instance.currentTokenOwnerships,
    };

_$AccountNFTImpl _$$AccountNFTImplFromJson(Map<String, dynamic> json) =>
    _$AccountNFTImpl(
      amount: (json['amount'] as num).toInt(),
      currentTokenData: TokenData.fromJson(
          json['current_token_data'] as Map<String, dynamic>),
      currentCollectionData: CollectionData.fromJson(
          json['current_collection_data'] as Map<String, dynamic>),
      lastTransactionVersion: (json['last_transaction_version'] as num).toInt(),
      propertyVersion: (json['property_version'] as num).toInt(),
    );

Map<String, dynamic> _$$AccountNFTImplToJson(_$AccountNFTImpl instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'current_token_data': instance.currentTokenData,
      'current_collection_data': instance.currentCollectionData,
      'last_transaction_version': instance.lastTransactionVersion,
      'property_version': instance.propertyVersion,
    };

_$TokenDataImpl _$$TokenDataImplFromJson(Map<String, dynamic> json) =>
    _$TokenDataImpl(
      creatorAddress: json['creator_address'] as String,
      collectionName: json['collection_name'] as String,
      description: json['description'] as String,
      metadataUri: json['metadata_uri'] as String,
      name: json['name'] as String,
      tokenDataIdHash: json['token_data_id_hash'] as String,
      collectionDataIdHash: json['collection_data_id_hash'] as String,
    );

Map<String, dynamic> _$$TokenDataImplToJson(_$TokenDataImpl instance) =>
    <String, dynamic>{
      'creator_address': instance.creatorAddress,
      'collection_name': instance.collectionName,
      'description': instance.description,
      'metadata_uri': instance.metadataUri,
      'name': instance.name,
      'token_data_id_hash': instance.tokenDataIdHash,
      'collection_data_id_hash': instance.collectionDataIdHash,
    };

_$CollectionDataImpl _$$CollectionDataImplFromJson(Map<String, dynamic> json) =>
    _$CollectionDataImpl(
      metadataUri: json['metadata_uri'] as String,
      supply: (json['supply'] as num).toInt(),
      description: json['description'] as String,
      collectionName: json['collection_name'] as String,
      collectionDataIdHash: json['collection_data_id_hash'] as String,
      tableHandle: json['table_handle'] as String,
      creatorAddress: json['creator_address'] as String,
    );

Map<String, dynamic> _$$CollectionDataImplToJson(
        _$CollectionDataImpl instance) =>
    <String, dynamic>{
      'metadata_uri': instance.metadataUri,
      'supply': instance.supply,
      'description': instance.description,
      'collection_name': instance.collectionName,
      'collection_data_id_hash': instance.collectionDataIdHash,
      'table_handle': instance.tableHandle,
      'creator_address': instance.creatorAddress,
    };
