// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns a Telegram Passport authorization form for sharing data with a
/// service
/// Returns [PassportAuthorizationForm]
@immutable
class GetPassportAuthorizationForm extends TdFunction {
  const GetPassportAuthorizationForm({
    required this.botUserId,
    required this.scope,
    required this.publicKey,
    required this.nonce,
  });

  /// [botUserId] User identifier of the service's bot
  final int botUserId;

  /// [scope] Telegram Passport element types requested by the service
  final String scope;

  /// [publicKey] Service's public key
  final String publicKey;

  /// [nonce] Unique request identifier provided by the service
  final String nonce;

  static const String constructor = 'getPassportAuthorizationForm';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'bot_user_id': botUserId,
        'scope': scope,
        'public_key': publicKey,
        'nonce': nonce,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetPassportAuthorizationForm &&
          const DeepCollectionEquality().equals(other.botUserId, botUserId) &&
          const DeepCollectionEquality().equals(other.scope, scope) &&
          const DeepCollectionEquality().equals(other.publicKey, publicKey) &&
          const DeepCollectionEquality().equals(other.nonce, nonce));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(botUserId),
        const DeepCollectionEquality().hash(scope),
        const DeepCollectionEquality().hash(publicKey),
        const DeepCollectionEquality().hash(nonce)
      ]);
}
