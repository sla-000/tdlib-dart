// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns information about a single member of a chat
/// Returns [ChatMember]
@immutable
class GetChatMember extends TdFunction {
  const GetChatMember({
    required this.chatId,
    required this.memberId,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [memberId] Member identifier
  final MessageSender memberId;

  static const String constructor = 'getChatMember';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'member_id': memberId.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetChatMember &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality().equals(other.memberId, memberId));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(memberId)
      ]);
}
