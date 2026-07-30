import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
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
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
