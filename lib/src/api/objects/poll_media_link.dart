// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A link
@immutable
class PollMediaLink extends PollMedia {
  const PollMediaLink({
    required this.url,
    this.linkPreview,
  });

  /// [url] URL of the link
  final String url;

  /// [linkPreview] Preview of the link; may be null if unknown
  final LinkPreview? linkPreview;

  static const String constructor = 'pollMediaLink';

  static PollMediaLink? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PollMediaLink(
      url: json['url'] as String,
      linkPreview:
          LinkPreview.fromJson(json['link_preview'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'url': url,
        'link_preview': linkPreview?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is PollMediaLink &&
          const DeepCollectionEquality().equals(other.url, url) &&
          const DeepCollectionEquality()
              .equals(other.linkPreview, linkPreview));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(url),
        const DeepCollectionEquality().hash(linkPreview)
      ]);
}
