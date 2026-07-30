// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Deletes background in a specific chat
/// Returns [Ok]
@immutable
class DeleteChatBackground extends TdFunction {
  const DeleteChatBackground({
    required this.chatId,
    required this.restorePrevious,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [restorePrevious] Pass true to restore previously set background. Can be
  /// used only in private and secret chats with non-deleted users if
  /// userFullInfo.set_chat_background == true. Supposed to be used from
  /// messageChatSetBackground messages with the currently set background that
  /// was set for both sides by the other user
  final bool restorePrevious;

  static const String constructor = 'deleteChatBackground';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'restore_previous': restorePrevious,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is DeleteChatBackground &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality()
              .equals(other.restorePrevious, restorePrevious));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(restorePrevious)
      ]);
}
