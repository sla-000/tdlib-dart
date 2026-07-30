// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A new incoming callback query from a message sent via a bot; for bots only
@immutable
class UpdateNewInlineCallbackQuery extends Update {
  const UpdateNewInlineCallbackQuery({
    required this.id,
    required this.senderUserId,
    required this.inlineMessageId,
    required this.chatInstance,
    required this.payload,
  });

  /// [id] Unique query identifier
  final int id;

  /// [senderUserId] Identifier of the user who sent the query
  final int senderUserId;

  /// [inlineMessageId] Identifier of the inline message from which the query
  /// originated
  final String inlineMessageId;

  /// [chatInstance] An identifier uniquely corresponding to the chat a message
  /// was sent to
  final int chatInstance;

  /// [payload] Query payload
  final CallbackQueryPayload payload;

  static const String constructor = 'updateNewInlineCallbackQuery';

  static UpdateNewInlineCallbackQuery? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateNewInlineCallbackQuery(
      id: (json['id'] is int
              ? json['id'] as int
              : int.tryParse(json['id']?.toString() ?? '')) ??
          0,
      senderUserId: (json['sender_user_id'] as int?) ?? 0,
      inlineMessageId: (json['inline_message_id'] as String?) ?? '',
      chatInstance: (json['chat_instance'] is int
              ? json['chat_instance'] as int
              : int.tryParse(json['chat_instance']?.toString() ?? '')) ??
          0,
      payload: CallbackQueryPayload.fromJson(
          json['payload'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id.toString(),
        'sender_user_id': senderUserId,
        'inline_message_id': inlineMessageId,
        'chat_instance': chatInstance.toString(),
        'payload': payload.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpdateNewInlineCallbackQuery &&
          const DeepCollectionEquality().equals(other.id, id) &&
          const DeepCollectionEquality()
              .equals(other.senderUserId, senderUserId) &&
          const DeepCollectionEquality()
              .equals(other.inlineMessageId, inlineMessageId) &&
          const DeepCollectionEquality()
              .equals(other.chatInstance, chatInstance) &&
          const DeepCollectionEquality().equals(other.payload, payload));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(senderUserId),
        const DeepCollectionEquality().hash(inlineMessageId),
        const DeepCollectionEquality().hash(chatInstance),
        const DeepCollectionEquality().hash(payload)
      ]);
}
