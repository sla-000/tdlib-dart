// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The revenue earned from sponsored messages in a chat has changed. If chat
/// revenue screen is opened, then getChatRevenueTransactions may be called to
/// fetch new transactions
@immutable
class UpdateChatRevenueAmount extends Update {
  const UpdateChatRevenueAmount({
    required this.chatId,
    required this.revenueAmount,
  });

  /// [chatId] Identifier of the chat
  final int chatId;

  /// [revenueAmount] New amount of earned revenue
  final ChatRevenueAmount revenueAmount;

  static const String constructor = 'updateChatRevenueAmount';

  static UpdateChatRevenueAmount? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatRevenueAmount(
      chatId: (json['chat_id'] as int?) ?? 0,
      revenueAmount: ChatRevenueAmount.fromJson(
          json['revenue_amount'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'revenue_amount': revenueAmount.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpdateChatRevenueAmount &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality()
              .equals(other.revenueAmount, revenueAmount));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(revenueAmount)
      ]);
}
