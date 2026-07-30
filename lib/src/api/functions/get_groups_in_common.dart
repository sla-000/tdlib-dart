// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns a list of common group chats with a given user. Chats are sorted
/// by their type and creation date
/// Returns [Chats]
@immutable
class GetGroupsInCommon extends TdFunction {
  const GetGroupsInCommon({
    required this.userId,
    required this.offsetChatId,
    required this.limit,
  });

  /// [userId] User identifier
  final int userId;

  /// [offsetChatId] Chat identifier starting from which to return chats; use 0
  /// for the first request
  final int offsetChatId;

  /// [limit] The maximum number of chats to be returned; up to 100
  final int limit;

  static const String constructor = 'getGroupsInCommon';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'user_id': userId,
        'offset_chat_id': offsetChatId,
        'limit': limit,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetGroupsInCommon &&
          const DeepCollectionEquality().equals(other.userId, userId) &&
          const DeepCollectionEquality()
              .equals(other.offsetChatId, offsetChatId) &&
          const DeepCollectionEquality().equals(other.limit, limit));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(userId),
        const DeepCollectionEquality().hash(offsetChatId),
        const DeepCollectionEquality().hash(limit)
      ]);
}
