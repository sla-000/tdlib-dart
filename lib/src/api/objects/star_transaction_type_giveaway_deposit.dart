// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The transaction is a deposit of Telegram Stars from a giveaway; relevant
/// for regular users only
@immutable
class StarTransactionTypeGiveawayDeposit extends StarTransactionType {
  const StarTransactionTypeGiveawayDeposit({
    required this.chatId,
    required this.giveawayMessageId,
  });

  /// [chatId] Identifier of a supergroup or a channel chat that created the
  /// giveaway
  final int chatId;

  /// [giveawayMessageId] Identifier of the message with the giveaway; may be 0
  /// or an identifier of a deleted message
  final int giveawayMessageId;

  static const String constructor = 'starTransactionTypeGiveawayDeposit';

  static StarTransactionTypeGiveawayDeposit? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StarTransactionTypeGiveawayDeposit(
      chatId: json['chat_id'] as int,
      giveawayMessageId: json['giveaway_message_id'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'giveaway_message_id': giveawayMessageId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is StarTransactionTypeGiveawayDeposit &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality()
              .equals(other.giveawayMessageId, giveawayMessageId));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(giveawayMessageId)
      ]);
}
