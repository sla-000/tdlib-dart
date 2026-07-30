// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Only specific reactions are available in the chat
@immutable
class ChatAvailableReactionsSome extends ChatAvailableReactions {
  const ChatAvailableReactionsSome({
    required this.reactions,
    required this.maxReactionCount,
  });

  /// [reactions] The list of reactions
  final List<ReactionType> reactions;

  /// [maxReactionCount] The maximum allowed number of reactions per message;
  /// 1-11
  final int maxReactionCount;

  static const String constructor = 'chatAvailableReactionsSome';

  static ChatAvailableReactionsSome? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatAvailableReactionsSome(
      reactions: List<ReactionType>.from(((json['reactions']
                  as List<dynamic>?) ??
              <dynamic>[])
          .map((item) => ReactionType.fromJson(item as Map<String, dynamic>?))
          .toList()),
      maxReactionCount: (json['max_reaction_count'] as int?) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'reactions': reactions.map((item) => item.toJson()).toList(),
        'max_reaction_count': maxReactionCount,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ChatAvailableReactionsSome &&
          const DeepCollectionEquality().equals(other.reactions, reactions) &&
          const DeepCollectionEquality()
              .equals(other.maxReactionCount, maxReactionCount));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(reactions),
        const DeepCollectionEquality().hash(maxReactionCount)
      ]);
}
