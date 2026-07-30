// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns an HTTPS link to boost the specified supergroup or channel chat
/// Returns [ChatBoostLink]
@immutable
class GetChatBoostLink extends TdFunction {
  const GetChatBoostLink({
    required this.chatId,
  });

  /// [chatId] Identifier of the chat
  final int chatId;

  static const String constructor = 'getChatBoostLink';

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
          other is GetChatBoostLink &&
          const DeepCollectionEquality().equals(other.chatId, chatId));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(chatId)]);
}
