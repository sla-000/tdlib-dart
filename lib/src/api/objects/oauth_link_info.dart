// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Information about the OAuth authorization
@immutable
class OauthLinkInfo extends TdObject {
  const OauthLinkInfo({
    required this.userId,
    required this.url,
    required this.domain,
    required this.fromApp,
    required this.verifiedAppName,
    required this.botUserId,
    required this.requestWriteAccess,
    required this.requestPhoneNumberAccess,
    required this.browser,
    required this.platform,
    required this.ipAddress,
    required this.location,
    required this.matchCodeFirst,
    required this.matchCodes,
  });

  /// [userId] Identifier of the user for which the link was generated; may be 0
  /// if unknown. The corresponding user may be unknown. If the user is logged
  /// in the application, then they must be chosen for authorization by default
  final int userId;

  /// [url] An HTTP URL where the user authorizes
  final String url;

  /// [domain] A domain of the URL
  final String domain;

  /// [fromApp] True, if the authorization originates from an application
  final bool fromApp;

  /// [verifiedAppName] Verified name of the application; if empty, then
  /// "Unverified App" must be shown instead
  final String verifiedAppName;

  /// [botUserId] User identifier of a bot linked with the website
  final int botUserId;

  /// [requestWriteAccess] True, if the user must be asked for the permission to
  /// the bot to send them messages
  final bool requestWriteAccess;

  /// [requestPhoneNumberAccess] True, if the user must be asked for the
  /// permission to share their phone number
  final bool requestPhoneNumberAccess;

  /// [browser] The version of a browser used for the authorization
  final String browser;

  /// [platform] Operating system the browser is running on
  final String platform;

  /// [ipAddress] IP address from which the authorization is performed, in
  /// human-readable format
  final String ipAddress;

  /// [location] Human-readable description of a country and a region from which
  /// the authorization is performed, based on the IP address
  final String location;

  /// [matchCodeFirst] True, if code matching dialog must be shown first and
  /// checkOauthRequestMatchCode must be called before acceptOauthRequest.
  /// Otherwise, checkOauthRequestMatchCode must not be called
  final bool matchCodeFirst;

  /// [matchCodes] The list of codes to match; may be empty if irrelevant
  final List<String> matchCodes;

  static const String constructor = 'oauthLinkInfo';

  static OauthLinkInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return OauthLinkInfo(
      userId: json['user_id'] as int,
      url: json['url'] as String,
      domain: json['domain'] as String,
      fromApp: json['from_app'] as bool,
      verifiedAppName: json['verified_app_name'] as String,
      botUserId: json['bot_user_id'] as int,
      requestWriteAccess: json['request_write_access'] as bool,
      requestPhoneNumberAccess: json['request_phone_number_access'] as bool,
      browser: json['browser'] as String,
      platform: json['platform'] as String,
      ipAddress: json['ip_address'] as String,
      location: json['location'] as String,
      matchCodeFirst: json['match_code_first'] as bool,
      matchCodes: List<String>.from(
          ((json['match_codes'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => item)
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'user_id': userId,
        'url': url,
        'domain': domain,
        'from_app': fromApp,
        'verified_app_name': verifiedAppName,
        'bot_user_id': botUserId,
        'request_write_access': requestWriteAccess,
        'request_phone_number_access': requestPhoneNumberAccess,
        'browser': browser,
        'platform': platform,
        'ip_address': ipAddress,
        'location': location,
        'match_code_first': matchCodeFirst,
        'match_codes': matchCodes.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is OauthLinkInfo &&
          const DeepCollectionEquality().equals(other.userId, userId) &&
          const DeepCollectionEquality().equals(other.url, url) &&
          const DeepCollectionEquality().equals(other.domain, domain) &&
          const DeepCollectionEquality().equals(other.fromApp, fromApp) &&
          const DeepCollectionEquality()
              .equals(other.verifiedAppName, verifiedAppName) &&
          const DeepCollectionEquality().equals(other.botUserId, botUserId) &&
          const DeepCollectionEquality()
              .equals(other.requestWriteAccess, requestWriteAccess) &&
          const DeepCollectionEquality().equals(
              other.requestPhoneNumberAccess, requestPhoneNumberAccess) &&
          const DeepCollectionEquality().equals(other.browser, browser) &&
          const DeepCollectionEquality().equals(other.platform, platform) &&
          const DeepCollectionEquality().equals(other.ipAddress, ipAddress) &&
          const DeepCollectionEquality().equals(other.location, location) &&
          const DeepCollectionEquality()
              .equals(other.matchCodeFirst, matchCodeFirst) &&
          const DeepCollectionEquality().equals(other.matchCodes, matchCodes));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(userId),
        const DeepCollectionEquality().hash(url),
        const DeepCollectionEquality().hash(domain),
        const DeepCollectionEquality().hash(fromApp),
        const DeepCollectionEquality().hash(verifiedAppName),
        const DeepCollectionEquality().hash(botUserId),
        const DeepCollectionEquality().hash(requestWriteAccess),
        const DeepCollectionEquality().hash(requestPhoneNumberAccess),
        const DeepCollectionEquality().hash(browser),
        const DeepCollectionEquality().hash(platform),
        const DeepCollectionEquality().hash(ipAddress),
        const DeepCollectionEquality().hash(location),
        const DeepCollectionEquality().hash(matchCodeFirst),
        const DeepCollectionEquality().hash(matchCodes)
      ]);
}
