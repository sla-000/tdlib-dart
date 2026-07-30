// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A link to a reference on the same page
@immutable
class RichTextReferenceLink extends RichText {
  const RichTextReferenceLink({
    required this.text,
    required this.referenceName,
    required this.url,
  });

  /// [text] The link text
  final RichText text;

  /// [referenceName] The reference name
  final String referenceName;

  /// [url] An HTTP URL that opens the reference
  final String url;

  static const String constructor = 'richTextReferenceLink';

  static RichTextReferenceLink? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return RichTextReferenceLink(
      text: RichText.fromJson(json['text'] as Map<String, dynamic>?)!,
      referenceName: json['reference_name'] as String,
      url: json['url'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'text': text.toJson(),
        'reference_name': referenceName,
        'url': url,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is RichTextReferenceLink &&
          const DeepCollectionEquality().equals(other.text, text) &&
          const DeepCollectionEquality()
              .equals(other.referenceName, referenceName) &&
          const DeepCollectionEquality().equals(other.url, url));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(text),
        const DeepCollectionEquality().hash(referenceName),
        const DeepCollectionEquality().hash(url)
      ]);
}
