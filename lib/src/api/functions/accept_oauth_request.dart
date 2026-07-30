// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Accepts an OAuth authorization request. Returns an HTTP URL to open after
/// successful authorization. May return an empty link if just a toast about
/// successful login has to be shown
/// Returns [HttpUrl]
@immutable
class AcceptOauthRequest extends TdFunction {
  const AcceptOauthRequest({
    required this.url,
    required this.matchCode,
    required this.allowWriteAccess,
    required this.allowPhoneNumberAccess,
  });

  /// [url] URL of the OAuth deep link
  final String url;

  /// [matchCode] The matching code chosen by the user
  final String matchCode;

  /// [allowWriteAccess] Pass true if the current user allowed the bot that was
  /// returned in getOauthLinkInfo, to send them messages
  final bool allowWriteAccess;

  /// [allowPhoneNumberAccess] Pass true if the current user allowed the bot
  /// that was returned in getOauthLinkInfo, to access their phone number
  final bool allowPhoneNumberAccess;

  static const String constructor = 'acceptOauthRequest';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'url': url,
        'match_code': matchCode,
        'allow_write_access': allowWriteAccess,
        'allow_phone_number_access': allowPhoneNumberAccess,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is AcceptOauthRequest &&
          const DeepCollectionEquality().equals(other.url, url) &&
          const DeepCollectionEquality().equals(other.matchCode, matchCode) &&
          const DeepCollectionEquality()
              .equals(other.allowWriteAccess, allowWriteAccess) &&
          const DeepCollectionEquality()
              .equals(other.allowPhoneNumberAccess, allowPhoneNumberAccess));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(url),
        const DeepCollectionEquality().hash(matchCode),
        const DeepCollectionEquality().hash(allowWriteAccess),
        const DeepCollectionEquality().hash(allowPhoneNumberAccess)
      ]);
}
