// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns the list of revenue transactions for a chat. Currently, this
/// method can be used only for channels if
/// supergroupFullInfo.can_get_revenue_statistics == true or bots if
/// userFullInfo.bot_info.can_get_revenue_statistics == true
/// Returns [ChatRevenueTransactions]
@immutable
class GetChatRevenueTransactions extends TdFunction {
  const GetChatRevenueTransactions({
    required this.chatId,
    required this.offset,
    required this.limit,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [offset] Offset of the first transaction to return as received from the
  /// previous request; use empty string to get the first chunk of results
  final String offset;

  /// [limit] The maximum number of transactions to be returned; up to 100
  final int limit;

  static const String constructor = 'getChatRevenueTransactions';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'offset': offset,
        'limit': limit,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetChatRevenueTransactions &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality().equals(other.offset, offset) &&
          const DeepCollectionEquality().equals(other.limit, limit));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(offset),
        const DeepCollectionEquality().hash(limit)
      ]);
}
