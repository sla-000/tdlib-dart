// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns information about messages. If a message is not found, returns
/// null on the corresponding position of the result
/// Returns [Messages]
@immutable
class GetMessages extends TdFunction {
  const GetMessages({
    required this.chatId,
    required this.messageIds,
  });

  /// [chatId] Identifier of the chat the messages belong to
  final int chatId;

  /// [messageIds] Identifiers of the messages to get
  final List<int> messageIds;

  static const String constructor = 'getMessages';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_ids': messageIds.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetMessages &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality().equals(other.messageIds, messageIds));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(messageIds)
      ]);
}
