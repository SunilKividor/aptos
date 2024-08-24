// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_coins.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AccountCoinsImpl _$$AccountCoinsImplFromJson(Map<String, dynamic> json) =>
    _$AccountCoinsImpl(
      currentCoinBalances: (json['current_coin_balances'] as List<dynamic>)
          .map((e) => CoinBalance.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AccountCoinsImplToJson(_$AccountCoinsImpl instance) =>
    <String, dynamic>{
      'current_coin_balances': instance.currentCoinBalances,
    };

_$CoinBalanceImpl _$$CoinBalanceImplFromJson(Map<String, dynamic> json) =>
    _$CoinBalanceImpl(
      amount: (json['amount'] as num).toInt(),
      coinType: json['coin_type'] as String,
      coinInfo: json['coin_info'] == null
          ? null
          : CoinInfo.fromJson(json['coin_info'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CoinBalanceImplToJson(_$CoinBalanceImpl instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'coin_type': instance.coinType,
      'coin_info': instance.coinInfo,
    };

_$CoinInfoImpl _$$CoinInfoImplFromJson(Map<String, dynamic> json) =>
    _$CoinInfoImpl(
      name: json['name'] as String,
      decimals: (json['decimals'] as num).toInt(),
      symbol: json['symbol'] as String,
    );

Map<String, dynamic> _$$CoinInfoImplToJson(_$CoinInfoImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'decimals': instance.decimals,
      'symbol': instance.symbol,
    };
