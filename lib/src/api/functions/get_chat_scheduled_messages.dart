// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns all scheduled messages in a chat. The messages are returned in
/// reverse chronological order (i.e., in order of decreasing message_id)
/// Returns [Messages]
@immutable
class GetChatScheduledMessages extends TdFunction {
  const GetChatScheduledMessages({
    required this.chatId,
  });

  /// [chatId] Chat identifier
  final int chatId;

  static const String constructor = 'getChatScheduledMessages';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetChatScheduledMessages &&
          const DeepCollectionEquality().equals(other.chatId, chatId));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(chatId)]);
}
