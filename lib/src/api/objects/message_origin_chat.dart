// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The message was originally sent on behalf of a chat
@immutable
class MessageOriginChat extends MessageOrigin {
  const MessageOriginChat({
    required this.senderChatId,
    required this.authorSignature,
  });

  /// [senderChatId] Identifier of the chat that originally sent the message
  final int senderChatId;

  /// [authorSignature] For messages originally sent by an anonymous chat
  /// administrator, original message author signature
  final String authorSignature;

  static const String constructor = 'messageOriginChat';

  static MessageOriginChat? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageOriginChat(
      senderChatId: (json['sender_chat_id'] as int?) ?? 0,
      authorSignature: (json['author_signature'] as String?) ?? '',
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'sender_chat_id': senderChatId,
        'author_signature': authorSignature,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is MessageOriginChat &&
          const DeepCollectionEquality()
              .equals(other.senderChatId, senderChatId) &&
          const DeepCollectionEquality()
              .equals(other.authorSignature, authorSignature));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(senderChatId),
        const DeepCollectionEquality().hash(authorSignature)
      ]);
}
