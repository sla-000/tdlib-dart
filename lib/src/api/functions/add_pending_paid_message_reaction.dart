// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Adds the paid message reaction to a message. Use
/// getMessageAvailableReactions to check whether the reaction is available
/// for the message
/// Returns [Ok]
@immutable
class AddPendingPaidMessageReaction extends TdFunction {
  const AddPendingPaidMessageReaction({
    required this.chatId,
    required this.messageId,
    required this.starCount,
    this.type,
  });

  /// [chatId] Identifier of the chat to which the message belongs
  final int chatId;

  /// [messageId] Identifier of the message
  final int messageId;

  /// [starCount] Number of Telegram Stars to be used for the reaction. The
  /// total number of pending paid reactions must not exceed
  /// getOption("paid_reaction_star_count_max")
  final int starCount;

  /// [type] Type of the paid reaction; pass null if the user didn't choose
  /// reaction type explicitly, for example, the reaction is set from the
  /// message bubble
  final PaidReactionType? type;

  static const String constructor = 'addPendingPaidMessageReaction';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_id': messageId,
        'star_count': starCount,
        'type': type?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is AddPendingPaidMessageReaction &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality().equals(other.messageId, messageId) &&
          const DeepCollectionEquality().equals(other.starCount, starCount) &&
          const DeepCollectionEquality().equals(other.type, type));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(messageId),
        const DeepCollectionEquality().hash(starCount),
        const DeepCollectionEquality().hash(type)
      ]);
}
