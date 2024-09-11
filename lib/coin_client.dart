
import 'dart:typed_data';

import 'package:aptos/aptos_account.dart';
import 'package:aptos/aptos_client.dart';
import 'package:aptos/entities/nft_entity.dart';
import 'package:aptos/models/entry_function_payload.dart';
import 'package:aptos/transaction_builder/builder.dart';

class CoinClient {

  late AptosClient aptosClient;

  CoinClient(AptosClient client) {
    aptosClient = client;
  }

  factory CoinClient.fromEndpoint(String endpoint, {bool enableDebugLog = false}) {
    return CoinClient(AptosClient(endpoint, enableDebugLog: enableDebugLog));
  }

  /// Generate, sign, and submit a transaction to the Aptos blockchain API to
  /// transfer coins from one account to another. By default it transfers
  /// 0x1::aptos_coin::AptosCoin, but you can specify a different coin type
  /// with the `coinType` argument.
  ///
  /// You may set `createReceiverIfMissing` to true if you want to create the
  /// receiver account if it does not exist on chain yet. If you do not set
  /// this to true, the transaction will fail if the receiver account does not
  /// exist on-chain.
    Future<String> transferBatch(
    AptosAccount from,
    String to,
    List<BigInt> amount,
    List<String> coinType,
    {
    BigInt? maxGasAmount,
    BigInt? gasUnitPrice,
    BigInt? expireTimestamp,
    bool createReceiverIfMissing = false
  }) async {

    final func = createReceiverIfMissing ? "0x1::aptos_account::transfer_coins" : "0x1::coin::transfer";

    final config = ABIBuilderConfig(
      sender: from.address,
      maxGasAmount: maxGasAmount,
      gasUnitPrice: gasUnitPrice,
      expSecFromNow: expireTimestamp
    );
     
    final builder = TransactionBuilderRemoteABI(aptosClient, config);
    List<Uint8List> bcsTxns = [];
    for(int i=0;i<coinType.length;i++){
          final rawTxn = await builder.build(
      func,
      [coinType[i]],
      [to, amount[i]]
    );
    final bcsTxn = AptosClient.generateBCSTransaction(from, rawTxn);
    bcsTxns.add(bcsTxn);
    }
    final resp = await aptosClient.submitSignedBatchBCSTransaction(bcsTxns);
    return resp["hash"];
  }

    Future<String> coinTransferMulti(
    AptosAccount from,
    List<String> to,
    List<BigInt> amount,
    List<String> coinType,
    String function,
    {
    BigInt? maxGasAmount,
    BigInt? gasUnitPrice,
    BigInt? expireTimestamp,
    bool multiReceiver = false,
  }) async {

    final func = function;
    final numberOfCoins = coinType.length;

    final config = ABIBuilderConfig(
      sender: from.address,
      maxGasAmount: maxGasAmount,
      gasUnitPrice: gasUnitPrice,
      expSecFromNow: expireTimestamp
    );
    
    final builder = TransactionBuilderRemoteABI(aptosClient, config);
    List<String> typeArgs = [];
    typeArgs.addAll(coinType);
    while(typeArgs.length < 7) {
      typeArgs.add("0x1::string::String");
    }
    List<dynamic> args = [];
    for(int i=0;i<coinType.length;i++){
      // if(multiReceiver) {
      //   args.add(amount);
      // } else {
      //   args.add([amount[i]]);
      // }
      args.add([amount[i]]);
      if(multiReceiver){
        args.add(to);
      } else {
        args.add([to[0]]);
      }
    }
    while(args.length < 14){
      args.add([]);
    }
    args.add(numberOfCoins);
    final rawTxn = await builder.build(
      func,
      typeArgs,
      args,
    );

    final bcsTxn = AptosClient.generateBCSTransaction(from, rawTxn);
    final resp = await aptosClient.submitSignedBCSTransaction(bcsTxn);
    return resp["hash"];
  }

  Future<String> coinTransfer(
    AptosAccount from,
    String to,
    BigInt amount,{
    BigInt? maxGasAmount,
    BigInt? gasUnitPrice,
    BigInt? expireTimestamp,
    String? coinType,
    bool createReceiverIfMissing = false
  }) async {
    coinType ??= AptosClient.APTOS_COIN;

    final func = createReceiverIfMissing ? "0x1::aptos_account::transfer_coins" : "0x1::coin::transfer";

    final config = ABIBuilderConfig(
      sender: from.address,
      maxGasAmount: maxGasAmount,
      gasUnitPrice: gasUnitPrice,
      expSecFromNow: expireTimestamp
    );
    
    final builder = TransactionBuilderRemoteABI(aptosClient, config);
    final rawTxn = await builder.build(
      func,
      [coinType],
      [to, amount]
    );

    final bcsTxn = AptosClient.generateBCSTransaction(from, rawTxn);
    final resp = await aptosClient.submitSignedBCSTransaction(bcsTxn);
    return resp["hash"];
  }

  Future<String> nftTransfer(AptosNftTransactionEntity nftDetails) async {

    final func = nftDetails.function;

    final config = ABIBuilderConfig(
      sender: nftDetails.from.address,
      maxGasAmount: nftDetails.maxGasAmount,
      gasUnitPrice: nftDetails.gasUnitPrice,
      expSecFromNow: nftDetails.expireTimestamp
    );

    
    final builder = TransactionBuilderRemoteABI(aptosClient, config);
    final rawTxn = await builder.build(
      func,
      [],
      [
        nftDetails.tokenv1Entity.tokenCreator,
        nftDetails.tokenv1Entity.collectionName,
        nftDetails.tokenv1Entity.nftName,
        nftDetails.tokenv1Entity.tokenPropertyVersion,
        nftDetails.tokenv1Entity.receiverAddress,
        nftDetails.tokenv2Entity.tokenv2,
        nftDetails.tokenv2Entity.receiverAddress,
      ]
    );

    final bcsTxn = AptosClient.generateBCSTransaction(nftDetails.from, rawTxn);
    final resp = await aptosClient.submitSignedBCSTransaction(bcsTxn);
    return resp["hash"];
  }

  Future<BigInt> checkBalance(String address, { String? coinType }) async {
    coinType ??= AptosClient.APTOS_COIN;
    String typeTag = "0x1::coin::CoinStore<$coinType>";
    final accountResource = await aptosClient.getAccountResource(address, typeTag);
    return BigInt.parse(accountResource["data"]["coin"]["value"]);
  }

  Future<String> register(AptosAccount coinReceiver, String coinType) async {
    final payload = EntryFunctionPayload(
      functionId: "0x1::managed_coin::register",
      typeArguments: [coinType], 
      arguments: []);
    final rawTxn = await aptosClient.generateTransaction(coinReceiver, payload);
    final bcsTxn = aptosClient.signTransaction(coinReceiver, rawTxn);
    final txn = await aptosClient.submitSignedBCSTransaction(bcsTxn);
    return txn["hash"];
  }

}