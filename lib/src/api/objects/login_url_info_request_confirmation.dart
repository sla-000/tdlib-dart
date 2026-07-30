// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// An authorization confirmation dialog needs to be shown to the user
@immutable
class LoginUrlInfoRequestConfirmation extends LoginUrlInfo {
  const LoginUrlInfoRequestConfirmation({
    required this.url,
    required this.domain,
    required this.botUserId,
    required this.requestWriteAccess,
  });

  /// [url] An HTTP URL to be opened
  final String url;

  /// [domain] A domain of the URL
  final String domain;

  /// [botUserId] User identifier of a bot linked with the website
  final int botUserId;

  /// [requestWriteAccess] True, if the user must be asked for the permission to
  /// the bot to send them messages
  final bool requestWriteAccess;

  static const String constructor = 'loginUrlInfoRequestConfirmation';

  static LoginUrlInfoRequestConfirmation? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return LoginUrlInfoRequestConfirmation(
      url: json['url'] as String,
      domain: json['domain'] as String,
      botUserId: json['bot_user_id'] as int,
      requestWriteAccess: json['request_write_access'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'url': url,
        'domain': domain,
        'bot_user_id': botUserId,
        'request_write_access': requestWriteAccess,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is LoginUrlInfoRequestConfirmation &&
          const DeepCollectionEquality().equals(other.url, url) &&
          const DeepCollectionEquality().equals(other.domain, domain) &&
          const DeepCollectionEquality().equals(other.botUserId, botUserId) &&
          const DeepCollectionEquality()
              .equals(other.requestWriteAccess, requestWriteAccess));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(url),
        const DeepCollectionEquality().hash(domain),
        const DeepCollectionEquality().hash(botUserId),
        const DeepCollectionEquality().hash(requestWriteAccess)
      ]);
}
