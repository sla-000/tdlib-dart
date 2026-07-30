// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The linked chat of a supergroup was changed
@immutable
class ChatEventLinkedChatChanged extends ChatEventAction {
  const ChatEventLinkedChatChanged({
    required this.oldLinkedChatId,
    required this.newLinkedChatId,
  });

  /// [oldLinkedChatId] Previous supergroup linked chat identifier
  final int oldLinkedChatId;

  /// [newLinkedChatId] New supergroup linked chat identifier
  final int newLinkedChatId;

  static const String constructor = 'chatEventLinkedChatChanged';

  static ChatEventLinkedChatChanged? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventLinkedChatChanged(
      oldLinkedChatId: json['old_linked_chat_id'] as int,
      newLinkedChatId: json['new_linked_chat_id'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'old_linked_chat_id': oldLinkedChatId,
        'new_linked_chat_id': newLinkedChatId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ChatEventLinkedChatChanged &&
          const DeepCollectionEquality()
              .equals(other.oldLinkedChatId, oldLinkedChatId) &&
          const DeepCollectionEquality()
              .equals(other.newLinkedChatId, newLinkedChatId));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(oldLinkedChatId),
        const DeepCollectionEquality().hash(newLinkedChatId)
      ]);
}
