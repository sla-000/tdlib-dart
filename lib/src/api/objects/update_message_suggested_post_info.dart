// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Information about suggested post of a message was changed
@immutable
class UpdateMessageSuggestedPostInfo extends Update {
  const UpdateMessageSuggestedPostInfo({
    required this.chatId,
    required this.messageId,
    required this.suggestedPostInfo,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [messageId] Message identifier
  final int messageId;

  /// [suggestedPostInfo] The new information about the suggested post
  final SuggestedPostInfo suggestedPostInfo;

  static const String constructor = 'updateMessageSuggestedPostInfo';

  static UpdateMessageSuggestedPostInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateMessageSuggestedPostInfo(
      chatId: (json['chat_id'] as int?) ?? 0,
      messageId: (json['message_id'] as int?) ?? 0,
      suggestedPostInfo: SuggestedPostInfo.fromJson(
          json['suggested_post_info'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_id': messageId,
        'suggested_post_info': suggestedPostInfo.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpdateMessageSuggestedPostInfo &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality().equals(other.messageId, messageId) &&
          const DeepCollectionEquality()
              .equals(other.suggestedPostInfo, suggestedPostInfo));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(messageId),
        const DeepCollectionEquality().hash(suggestedPostInfo)
      ]);
}
