// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Toggles whether a General topic is hidden in a forum supergroup chat;
/// requires can_manage_topics administrator right in the supergroup
/// Returns [Ok]
@immutable
class ToggleGeneralForumTopicIsHidden extends TdFunction {
  const ToggleGeneralForumTopicIsHidden({
    required this.chatId,
    required this.isHidden,
  });

  /// [chatId] Identifier of the chat
  final int chatId;

  /// [isHidden] Pass true to hide and close the General topic; pass false to
  /// unhide it
  final bool isHidden;

  static const String constructor = 'toggleGeneralForumTopicIsHidden';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'is_hidden': isHidden,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ToggleGeneralForumTopicIsHidden &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality().equals(other.isHidden, isHidden));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(isHidden)
      ]);
}
