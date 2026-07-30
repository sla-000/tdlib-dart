// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains information about a Web App URL
@immutable
class WebAppUrl extends TdObject {
  const WebAppUrl({
    required this.url,
    required this.requireSameOrigin,
  });

  /// [url] The Web App URL to open in a web view
  final String url;

  /// [requireSameOrigin] True, if events from the Web App must be accepted only
  /// from the same origin as the URL
  final bool requireSameOrigin;

  static const String constructor = 'webAppUrl';

  static WebAppUrl? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return WebAppUrl(
      url: json['url'] as String,
      requireSameOrigin: json['require_same_origin'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'url': url,
        'require_same_origin': requireSameOrigin,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is WebAppUrl &&
          const DeepCollectionEquality().equals(other.url, url) &&
          const DeepCollectionEquality()
              .equals(other.requireSameOrigin, requireSameOrigin));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(url),
        const DeepCollectionEquality().hash(requireSameOrigin)
      ]);
}
