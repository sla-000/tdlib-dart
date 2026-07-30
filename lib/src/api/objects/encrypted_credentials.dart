// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains encrypted Telegram Passport data credentials
@immutable
class EncryptedCredentials extends TdObject {
  const EncryptedCredentials({
    required this.data,
    required this.hash,
    required this.secret,
  });

  /// [data] The encrypted credentials
  final String data;

  /// [hash] The decrypted data hash
  final String hash;

  /// [secret] Secret for data decryption, encrypted with the service's public
  /// key
  final String secret;

  static const String constructor = 'encryptedCredentials';

  static EncryptedCredentials? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return EncryptedCredentials(
      data: json['data'] as String,
      hash: json['hash'] as String,
      secret: json['secret'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'data': data,
        'hash': hash,
        'secret': secret,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is EncryptedCredentials &&
          const DeepCollectionEquality().equals(other.data, data) &&
          const DeepCollectionEquality().equals(other.hash, hash) &&
          const DeepCollectionEquality().equals(other.secret, secret));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(data),
        const DeepCollectionEquality().hash(hash),
        const DeepCollectionEquality().hash(secret)
      ]);
}
