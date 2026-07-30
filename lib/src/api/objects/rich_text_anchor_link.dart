// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A link to an anchor on the same page
@immutable
class RichTextAnchorLink extends RichText {
  const RichTextAnchorLink({
    required this.text,
    required this.anchorName,
    required this.url,
  });

  /// [text] The link text
  final RichText text;

  /// [anchorName] The anchor name. If the name is empty, the link must bring
  /// back to top
  final String anchorName;

  /// [url] An HTTP URL that opens the anchor
  final String url;

  static const String constructor = 'richTextAnchorLink';

  static RichTextAnchorLink? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return RichTextAnchorLink(
      text: RichText.fromJson(json['text'] as Map<String, dynamic>?)!,
      anchorName: json['anchor_name'] as String,
      url: json['url'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'text': text.toJson(),
        'anchor_name': anchorName,
        'url': url,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is RichTextAnchorLink &&
          const DeepCollectionEquality().equals(other.text, text) &&
          const DeepCollectionEquality().equals(other.anchorName, anchorName) &&
          const DeepCollectionEquality().equals(other.url, url));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(text),
        const DeepCollectionEquality().hash(anchorName),
        const DeepCollectionEquality().hash(url)
      ]);
}
