// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The chat action bar was changed
@immutable
class UpdateChatActionBar extends Update {
  const UpdateChatActionBar({
    required this.chatId,
    this.actionBar,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [actionBar] The new value of the action bar; may be null
  final ChatActionBar? actionBar;

  static const String constructor = 'updateChatActionBar';

  static UpdateChatActionBar? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatActionBar(
      chatId: json['chat_id'] as int,
      actionBar:
          ChatActionBar.fromJson(json['action_bar'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'action_bar': actionBar?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpdateChatActionBar &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality().equals(other.actionBar, actionBar));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(actionBar)
      ]);
}
