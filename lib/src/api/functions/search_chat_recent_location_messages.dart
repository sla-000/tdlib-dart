// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns information about the recent live locations of chat members that
/// were sent to the chat. Returns at most one live location message per user
/// Returns [Messages]
@immutable
class SearchChatRecentLocationMessages extends TdFunction {
  const SearchChatRecentLocationMessages({
    required this.chatId,
    required this.limit,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [limit] The maximum number of messages to be returned
  final int limit;

  static const String constructor = 'searchChatRecentLocationMessages';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'limit': limit,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SearchChatRecentLocationMessages &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality().equals(other.limit, limit));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(limit)
      ]);
}
