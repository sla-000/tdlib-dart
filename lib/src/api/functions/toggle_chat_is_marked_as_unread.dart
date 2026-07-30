// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Changes the marked as unread state of a chat
/// Returns [Ok]
@immutable
class ToggleChatIsMarkedAsUnread extends TdFunction {
  const ToggleChatIsMarkedAsUnread({
    required this.chatId,
    required this.isMarkedAsUnread,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [isMarkedAsUnread] New value of is_marked_as_unread
  final bool isMarkedAsUnread;

  static const String constructor = 'toggleChatIsMarkedAsUnread';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'is_marked_as_unread': isMarkedAsUnread,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ToggleChatIsMarkedAsUnread &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality()
              .equals(other.isMarkedAsUnread, isMarkedAsUnread));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(isMarkedAsUnread)
      ]);
}
