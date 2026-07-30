import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns the user who will become the owner of the chat after 7 days if the
/// current user does not return to the supergroup or channel during that
/// period or immediately for basic groups; requires owner privileges in the
/// chat. Available only for basic groups, supergroups, and channel chats
/// Returns [User]
@immutable
class GetChatOwnerAfterLeaving extends TdFunction {
  const GetChatOwnerAfterLeaving({
    required this.chatId,
  });

  /// [chatId] Chat identifier
  final int chatId;

  static const String constructor = 'getChatOwnerAfterLeaving';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
