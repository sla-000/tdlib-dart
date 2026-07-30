// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Sets reactions on a message; for bots only
/// Returns [Ok]
@immutable
class SetMessageReactions extends TdFunction {
  const SetMessageReactions({
    required this.chatId,
    required this.messageId,
    required this.reactionTypes,
    required this.isBig,
  });

  /// [chatId] Identifier of the chat to which the message belongs
  final int chatId;

  /// [messageId] Identifier of the message
  final int messageId;

  /// [reactionTypes] Types of the reaction to set; pass an empty list to remove
  /// the reactions
  final List<ReactionType> reactionTypes;

  /// [isBig] Pass true if the reactions are added with a big animation
  final bool isBig;

  static const String constructor = 'setMessageReactions';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_id': messageId,
        'reaction_types': reactionTypes.map((item) => item.toJson()).toList(),
        'is_big': isBig,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SetMessageReactions &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality().equals(other.messageId, messageId) &&
          const DeepCollectionEquality()
              .equals(other.reactionTypes, reactionTypes) &&
          const DeepCollectionEquality().equals(other.isBig, isBig));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(messageId),
        const DeepCollectionEquality().hash(reactionTypes),
        const DeepCollectionEquality().hash(isBig)
      ]);
}
