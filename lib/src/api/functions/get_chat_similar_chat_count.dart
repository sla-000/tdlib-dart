// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns approximate number of chats similar to the given chat
/// Returns [Count]
@immutable
class GetChatSimilarChatCount extends TdFunction {
  const GetChatSimilarChatCount({
    required this.chatId,
    required this.returnLocal,
  });

  /// [chatId] Identifier of the target chat; must be an identifier of a channel
  /// chat
  final int chatId;

  /// [returnLocal] Pass true to get the number of chats without sending network
  /// requests, or -1 if the number of chats is unknown locally
  final bool returnLocal;

  static const String constructor = 'getChatSimilarChatCount';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'return_local': returnLocal,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetChatSimilarChatCount &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality()
              .equals(other.returnLocal, returnLocal));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(returnLocal)
      ]);
}
