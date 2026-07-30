// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns sponsored messages to be shown in a chat; for channel chats and
/// chats with bots only
/// Returns [SponsoredMessages]
@immutable
class GetChatSponsoredMessages extends TdFunction {
  const GetChatSponsoredMessages({
    required this.chatId,
  });

  /// [chatId] Identifier of the chat
  final int chatId;

  static const String constructor = 'getChatSponsoredMessages';

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
          other is GetChatSponsoredMessages &&
          const DeepCollectionEquality().equals(other.chatId, chatId));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(chatId)]);
}
