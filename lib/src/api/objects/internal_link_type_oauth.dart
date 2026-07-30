// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The link is an OAuth link. Call getOauthLinkInfo with the given URL to
/// process the link if the link was received from outside of the application;
/// otherwise, ignore it. After getOauthLinkInfo, show the user confirmation
/// dialog and process it with checkOauthRequestMatchCode, acceptOauthRequest
/// or declineOauthRequest
@immutable
class InternalLinkTypeOauth extends InternalLinkType {
  const InternalLinkTypeOauth({
    required this.url,
  });

  /// [url] URL to be passed to getOauthLinkInfo
  final String url;

  static const String constructor = 'internalLinkTypeOauth';

  static InternalLinkTypeOauth? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypeOauth(
      url: json['url'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'url': url,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is InternalLinkTypeOauth &&
          const DeepCollectionEquality().equals(other.url, url));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(url)]);
}
