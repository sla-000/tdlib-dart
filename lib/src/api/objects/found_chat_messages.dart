// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains a list of messages found by a search in a given chat
@immutable
class FoundChatMessages extends TdObject {
  const FoundChatMessages({
    required this.totalCount,
    required this.messages,
    required this.nextFromMessageId,
  });

  /// [totalCount] Approximate total number of messages found; -1 if unknown
  final int totalCount;

  /// [messages] List of messages
  final List<Message> messages;

  /// [nextFromMessageId] The offset for the next request. If 0, there are no
  /// more results
  final int nextFromMessageId;

  static const String constructor = 'foundChatMessages';

  static FoundChatMessages? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return FoundChatMessages(
      totalCount: (json['total_count'] as int?) ?? 0,
      messages: List<Message>.from(
          ((json['messages'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => Message.fromJson(item as Map<String, dynamic>?))
              .toList()),
      nextFromMessageId: (json['next_from_message_id'] as int?) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'total_count': totalCount,
        'messages': messages.map((item) => item.toJson()).toList(),
        'next_from_message_id': nextFromMessageId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is FoundChatMessages &&
          const DeepCollectionEquality().equals(other.totalCount, totalCount) &&
          const DeepCollectionEquality().equals(other.messages, messages) &&
          const DeepCollectionEquality()
              .equals(other.nextFromMessageId, nextFromMessageId));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(totalCount),
        const DeepCollectionEquality().hash(messages),
        const DeepCollectionEquality().hash(nextFromMessageId)
      ]);
}
