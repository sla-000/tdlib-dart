// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A mention of a Telegram user or chat by a username
@immutable
class RichTextMention extends RichText {
  const RichTextMention({
    required this.text,
    required this.username,
  });

  /// [text] Text
  final RichText text;

  /// [username] The username
  final String username;

  static const String constructor = 'richTextMention';

  static RichTextMention? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return RichTextMention(
      text: RichText.fromJson(json['text'] as Map<String, dynamic>?)!,
      username: (json['username'] as String?) ?? '',
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'text': text.toJson(),
        'username': username,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is RichTextMention &&
          const DeepCollectionEquality().equals(other.text, text) &&
          const DeepCollectionEquality().equals(other.username, username));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(text),
        const DeepCollectionEquality().hash(username)
      ]);
}
