// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Some messages were deleted
@immutable
class UpdateDeleteMessages extends Update {
  const UpdateDeleteMessages({
    required this.chatId,
    required this.messageIds,
    required this.isPermanent,
    required this.fromCache,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [messageIds] Identifiers of the deleted messages
  final List<int> messageIds;

  /// [isPermanent] True, if the messages are permanently deleted by a user (as
  /// opposed to just becoming inaccessible)
  final bool isPermanent;

  /// [fromCache] True, if the messages are deleted only from the cache and can
  /// possibly be retrieved again in the future
  final bool fromCache;

  static const String constructor = 'updateDeleteMessages';

  static UpdateDeleteMessages? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateDeleteMessages(
      chatId: (json['chat_id'] as int?) ?? 0,
      messageIds: List<int>.from(
          ((json['message_ids'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) =>
                  (item is int ? item : int.tryParse(item.toString()) ?? 0))
              .toList()),
      isPermanent: (json['is_permanent'] as bool?) ?? false,
      fromCache: (json['from_cache'] as bool?) ?? false,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_ids': messageIds.map((item) => item).toList(),
        'is_permanent': isPermanent,
        'from_cache': fromCache,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpdateDeleteMessages &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality().equals(other.messageIds, messageIds) &&
          const DeepCollectionEquality()
              .equals(other.isPermanent, isPermanent) &&
          const DeepCollectionEquality().equals(other.fromCache, fromCache));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(messageIds),
        const DeepCollectionEquality().hash(isPermanent),
        const DeepCollectionEquality().hash(fromCache)
      ]);
}
