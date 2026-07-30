// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The link must be opened in an Instant View. Call getWebPageInstantView
/// with the given URL to process the link. If Instant View is found, then
/// show it, otherwise, open the fallback URL in an external browser
@immutable
class InternalLinkTypeInstantView extends InternalLinkType {
  const InternalLinkTypeInstantView({
    required this.url,
    required this.fallbackUrl,
  });

  /// [url] URL to be passed to getWebPageInstantView
  final String url;

  /// [fallbackUrl] An URL to open if getWebPageInstantView fails
  final String fallbackUrl;

  static const String constructor = 'internalLinkTypeInstantView';

  static InternalLinkTypeInstantView? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypeInstantView(
      url: (json['url'] as String?) ?? '',
      fallbackUrl: (json['fallback_url'] as String?) ?? '',
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'url': url,
        'fallback_url': fallbackUrl,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is InternalLinkTypeInstantView &&
          const DeepCollectionEquality().equals(other.url, url) &&
          const DeepCollectionEquality()
              .equals(other.fallbackUrl, fallbackUrl));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(url),
        const DeepCollectionEquality().hash(fallbackUrl)
      ]);
}
