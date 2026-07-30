// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Chat has_protected_content setting was changed or request to change it was
/// rejected
@immutable
class MessageChatHasProtectedContentToggled extends MessageContent {
  const MessageChatHasProtectedContentToggled({
    required this.requestMessageId,
    required this.oldHasProtectedContent,
    required this.newHasProtectedContent,
  });

  /// [requestMessageId] Identifier of the message with the request to change
  /// the setting; can be an identifier of a deleted message or 0
  final int requestMessageId;

  /// [oldHasProtectedContent] Previous value of the setting
  final bool oldHasProtectedContent;

  /// [newHasProtectedContent] New value of the setting
  final bool newHasProtectedContent;

  static const String constructor = 'messageChatHasProtectedContentToggled';

  static MessageChatHasProtectedContentToggled? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageChatHasProtectedContentToggled(
      requestMessageId: json['request_message_id'] as int,
      oldHasProtectedContent: json['old_has_protected_content'] as bool,
      newHasProtectedContent: json['new_has_protected_content'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'request_message_id': requestMessageId,
        'old_has_protected_content': oldHasProtectedContent,
        'new_has_protected_content': newHasProtectedContent,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is MessageChatHasProtectedContentToggled &&
          const DeepCollectionEquality()
              .equals(other.requestMessageId, requestMessageId) &&
          const DeepCollectionEquality()
              .equals(other.oldHasProtectedContent, oldHasProtectedContent) &&
          const DeepCollectionEquality()
              .equals(other.newHasProtectedContent, newHasProtectedContent));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(requestMessageId),
        const DeepCollectionEquality().hash(oldHasProtectedContent),
        const DeepCollectionEquality().hash(newHasProtectedContent)
      ]);
}
