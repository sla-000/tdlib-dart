// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Changes the Telegram Star amount that must be paid to send a message to a
/// supergroup chat; requires can_restrict_members administrator right and
/// supergroupFullInfo.can_enable_paid_messages
/// Returns [Ok]
@immutable
class SetChatPaidMessageStarCount extends TdFunction {
  const SetChatPaidMessageStarCount({
    required this.chatId,
    required this.paidMessageStarCount,
  });

  /// [chatId] Identifier of the supergroup chat
  final int chatId;

  /// [paidMessageStarCount] The new number of Telegram Stars that must be paid
  /// for each message that is sent to the supergroup chat unless the sender is
  /// an administrator of the chat; 0-getOption("paid_message_star_count_max").
  /// The supergroup will receive getOption("paid_message_earnings_per_mille")
  /// Telegram Stars for each 1000 Telegram Stars paid for message sending
  final int paidMessageStarCount;

  static const String constructor = 'setChatPaidMessageStarCount';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'paid_message_star_count': paidMessageStarCount,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SetChatPaidMessageStarCount &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality()
              .equals(other.paidMessageStarCount, paidMessageStarCount));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(paidMessageStarCount)
      ]);
}
