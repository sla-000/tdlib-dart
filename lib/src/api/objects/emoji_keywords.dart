// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Represents a list of emojis with their keywords
@immutable
class EmojiKeywords extends TdObject {
  const EmojiKeywords({
    required this.emojiKeywords,
  });

  /// [emojiKeywords] List of emojis with their keywords
  final List<EmojiKeyword> emojiKeywords;

  static const String constructor = 'emojiKeywords';

  static EmojiKeywords? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return EmojiKeywords(
      emojiKeywords: List<EmojiKeyword>.from(((json['emoji_keywords']
                  as List<dynamic>?) ??
              <dynamic>[])
          .map((item) => EmojiKeyword.fromJson(item as Map<String, dynamic>?))
          .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'emoji_keywords': emojiKeywords.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is EmojiKeywords &&
          const DeepCollectionEquality()
              .equals(other.emojiKeywords, emojiKeywords));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(emojiKeywords)]);
}
