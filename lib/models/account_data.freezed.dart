// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AccountData _$AccountDataFromJson(Map<String, dynamic> json) {
  return _AccountData.fromJson(json);
}

/// @nodoc
mixin _$AccountData {
  String get sequenceNumber => throw _privateConstructorUsedError;
  String get authenticationKey => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$AccountDataImpl implements _AccountData {
  const _$AccountDataImpl(
      {required this.sequenceNumber, required this.authenticationKey});

  factory _$AccountDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$AccountDataImplFromJson(json);

  @override
  final String sequenceNumber;
  @override
  final String authenticationKey;

  @override
  String toString() {
    return 'AccountData(sequenceNumber: $sequenceNumber, authenticationKey: $authenticationKey)';
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AccountDataImplToJson(
      this,
    );
  }
}

abstract class _AccountData implements AccountData {
  const factory _AccountData(
      {required final String sequenceNumber,
      required final String authenticationKey}) = _$AccountDataImpl;

  factory _AccountData.fromJson(Map<String, dynamic> json) =
      _$AccountDataImpl.fromJson;

  @override
  String get sequenceNumber;
  @override
  String get authenticationKey;
}
