// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A dice message
@immutable
class InputMessageDice extends InputMessageContent {
  const InputMessageDice({
    required this.emoji,
    required this.clearDraft,
  });

  /// [emoji] Emoji on which the dice throw animation is based
  final String emoji;

  /// [clearDraft] Pass true to delete message draft in the chat
  final bool clearDraft;

  static const String constructor = 'inputMessageDice';

  static InputMessageDice? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputMessageDice(
      emoji: (json['emoji'] as String?) ?? '',
      clearDraft: (json['clear_draft'] as bool?) ?? false,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'emoji': emoji,
        'clear_draft': clearDraft,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is InputMessageDice &&
          const DeepCollectionEquality().equals(other.emoji, emoji) &&
          const DeepCollectionEquality().equals(other.clearDraft, clearDraft));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(emoji),
        const DeepCollectionEquality().hash(clearDraft)
      ]);
}
