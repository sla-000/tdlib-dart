// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A hashtag
@immutable
class RichTextHashtag extends RichText {
  const RichTextHashtag({
    required this.text,
    required this.hashtag,
  });

  /// [text] Text
  final RichText text;

  /// [hashtag] The hashtag
  final String hashtag;

  static const String constructor = 'richTextHashtag';

  static RichTextHashtag? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return RichTextHashtag(
      text: RichText.fromJson(json['text'] as Map<String, dynamic>?)!,
      hashtag: json['hashtag'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'text': text.toJson(),
        'hashtag': hashtag,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is RichTextHashtag &&
          const DeepCollectionEquality().equals(other.text, text) &&
          const DeepCollectionEquality().equals(other.hashtag, hashtag));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(text),
        const DeepCollectionEquality().hash(hashtag)
      ]);
}
