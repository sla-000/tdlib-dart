// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A reaction with an emoji
@immutable
class ReactionTypeEmoji extends ReactionType {
  const ReactionTypeEmoji({
    required this.emoji,
  });

  /// [emoji] Text representation of the reaction
  final String emoji;

  static const String constructor = 'reactionTypeEmoji';

  static ReactionTypeEmoji? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ReactionTypeEmoji(
      emoji: json['emoji'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'emoji': emoji,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ReactionTypeEmoji &&
          const DeepCollectionEquality().equals(other.emoji, emoji));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(emoji)]);
}
