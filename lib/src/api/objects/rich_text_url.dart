// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A rich text URL link
@immutable
class RichTextUrl extends RichText {
  const RichTextUrl({
    required this.text,
    required this.url,
    required this.isCached,
  });

  /// [text] Text
  final RichText text;

  /// [url] URL
  final String url;

  /// [isCached] True, if the URL has cached instant view server-side; instant
  /// view only
  final bool isCached;

  static const String constructor = 'richTextUrl';

  static RichTextUrl? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return RichTextUrl(
      text: RichText.fromJson(json['text'] as Map<String, dynamic>?)!,
      url: json['url'] as String,
      isCached: json['is_cached'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'text': text.toJson(),
        'url': url,
        'is_cached': isCached,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is RichTextUrl &&
          const DeepCollectionEquality().equals(other.text, text) &&
          const DeepCollectionEquality().equals(other.url, url) &&
          const DeepCollectionEquality().equals(other.isCached, isCached));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(text),
        const DeepCollectionEquality().hash(url),
        const DeepCollectionEquality().hash(isCached)
      ]);
}
