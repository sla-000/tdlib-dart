// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns the current boost status for a supergroup or a channel chat
/// Returns [ChatBoostStatus]
@immutable
class GetChatBoostStatus extends TdFunction {
  const GetChatBoostStatus({
    required this.chatId,
  });

  /// [chatId] Identifier of the chat
  final int chatId;

  static const String constructor = 'getChatBoostStatus';

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
          other is GetChatBoostStatus &&
          const DeepCollectionEquality().equals(other.chatId, chatId));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(chatId)]);
}
