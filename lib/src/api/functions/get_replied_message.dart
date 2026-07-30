import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns information about a non-bundled message that is replied by a given
/// message. Also, returns the pinned message for messagePinMessage, the game
/// message for messageGameScore, the invoice message for
/// messagePaymentSuccessful, the message with a previously set same
/// background for messageChatSetBackground, the giveaway message for
/// messageGiveawayCompleted, the checklist message for
/// messageChecklistTasksDone, messageChecklistTasksAdded, the message with
/// suggested post information for messageSuggestedPostApprovalFailed,
/// messageSuggestedPostApproved, messageSuggestedPostDeclined,
/// messageSuggestedPostPaid, messageSuggestedPostRefunded, the message with
/// the regular gift that was upgraded for messageUpgradedGift with origin of
/// the type upgradedGiftOriginUpgrade, the message with gift purchase offer
/// for messageUpgradedGiftPurchaseOfferRejected, the message with the request
/// to disable content protection for messageChatHasProtectedContentToggled,
/// the message with the poll for messagePollOptionAdded and
/// messagePollOptionDeleted, and the topic creation message for topic
/// messages without non-bundled replied message. Returns a 404 error if the
/// message doesn't exist
/// Returns [Message]
@immutable
class GetRepliedMessage extends TdFunction {
  const GetRepliedMessage({
    required this.chatId,
    required this.messageId,
  });

  /// [chatId] Identifier of the chat the message belongs to
  final int chatId;

  /// [messageId] Identifier of the reply message
  final int messageId;

  static const String constructor = 'getRepliedMessage';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_id': messageId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
