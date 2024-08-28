// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:aptos/aptos_account.dart';

class NftEntity {
  final AptosAccount from;
  final TokenV1Entity tokenv1Entity;
  final TokenV2Entity tokenv2Entity;
  final String function;
  BigInt? maxGasAmount;
  BigInt? gasUnitPrice;
  BigInt? expireTimestamp;

  NftEntity(
    this.from,
    this.tokenv1Entity,
    this.tokenv2Entity,
    this.function,
  );
}

class TokenV1Entity {
  final List<String> tokenCreator;
  final List<String> collectionName;
  final List<String> nftName;
  final List<String> receiverAddress;
  final int tokenPropertyVersion;
  TokenV1Entity({
    required this.tokenCreator,
    required this.collectionName,
    required this.nftName,
    required this.receiverAddress,
    required this.tokenPropertyVersion,
  });
}

class TokenV2Entity {
  final List<String> tokenv2;
  final List<String> receiverAddress;
  TokenV2Entity({
    required this.tokenv2,
    required this.receiverAddress,
  });
}