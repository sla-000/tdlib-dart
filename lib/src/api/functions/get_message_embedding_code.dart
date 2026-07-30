// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns an HTML code for embedding the message. Available only if
/// messageProperties.can_get_embedding_code
/// Returns [Text]
@immutable
class GetMessageEmbeddingCode extends TdFunction {
  const GetMessageEmbeddingCode({
    required this.chatId,
    required this.messageId,
    required this.forAlbum,
  });

  /// [chatId] Identifier of the chat to which the message belongs
  final int chatId;

  /// [messageId] Identifier of the message
  final int messageId;

  /// [forAlbum] Pass true to return an HTML code for embedding of the whole
  /// media album
  final bool forAlbum;

  static const String constructor = 'getMessageEmbeddingCode';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_id': messageId,
        'for_album': forAlbum,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetMessageEmbeddingCode &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality().equals(other.messageId, messageId) &&
          const DeepCollectionEquality().equals(other.forAlbum, forAlbum));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(messageId),
        const DeepCollectionEquality().hash(forAlbum)
      ]);
}
