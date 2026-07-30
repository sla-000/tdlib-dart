// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The link contains a request of Telegram passport data. Call
/// getPassportAuthorizationForm with the given parameters to process the link
/// if the link was received from outside of the application; otherwise,
/// ignore it
@immutable
class InternalLinkTypePassportDataRequest extends InternalLinkType {
  const InternalLinkTypePassportDataRequest({
    required this.botUserId,
    required this.scope,
    required this.publicKey,
    required this.nonce,
    required this.callbackUrl,
  });

  /// [botUserId] User identifier of the service's bot; the corresponding user
  /// may be unknown yet
  final int botUserId;

  /// [scope] Telegram Passport element types requested by the service
  final String scope;

  /// [publicKey] Service's public key
  final String publicKey;

  /// [nonce] Unique request identifier provided by the service
  final String nonce;

  /// [callbackUrl] An HTTP URL to open once the request is finished, canceled,
  /// or failed with the parameters tg_passport=success, tg_passport=cancel, or
  /// tg_passport=error&error=... respectively. If empty, then onActivityResult
  /// method must be used to return response on Android, or the link
  /// tgbot{bot_user_id}://passport/success or
  /// tgbot{bot_user_id}://passport/cancel must be opened otherwise
  final String callbackUrl;

  static const String constructor = 'internalLinkTypePassportDataRequest';

  static InternalLinkTypePassportDataRequest? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypePassportDataRequest(
      botUserId: json['bot_user_id'] as int,
      scope: json['scope'] as String,
      publicKey: json['public_key'] as String,
      nonce: json['nonce'] as String,
      callbackUrl: json['callback_url'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'bot_user_id': botUserId,
        'scope': scope,
        'public_key': publicKey,
        'nonce': nonce,
        'callback_url': callbackUrl,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is InternalLinkTypePassportDataRequest &&
          const DeepCollectionEquality().equals(other.botUserId, botUserId) &&
          const DeepCollectionEquality().equals(other.scope, scope) &&
          const DeepCollectionEquality().equals(other.publicKey, publicKey) &&
          const DeepCollectionEquality().equals(other.nonce, nonce) &&
          const DeepCollectionEquality()
              .equals(other.callbackUrl, callbackUrl));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(botUserId),
        const DeepCollectionEquality().hash(scope),
        const DeepCollectionEquality().hash(publicKey),
        const DeepCollectionEquality().hash(nonce),
        const DeepCollectionEquality().hash(callbackUrl)
      ]);
}
