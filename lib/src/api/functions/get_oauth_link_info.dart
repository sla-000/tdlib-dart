import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns information about an OAuth deep link. Use
/// checkOauthRequestMatchCode, acceptOauthRequest or declineOauthRequest to
/// process the link
/// Returns [OauthLinkInfo]
@immutable
class GetOauthLinkInfo extends TdFunction {
  const GetOauthLinkInfo({
    required this.url,
    required this.inAppOrigin,
  });

  /// [url] URL of the link
  final String url;

  /// [inAppOrigin] Origin of the OAuth request if the request was received from
  /// the in-app browser; pass an empty string otherwise
  final String inAppOrigin;

  static const String constructor = 'getOauthLinkInfo';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'url': url,
        'in_app_origin': inAppOrigin,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
