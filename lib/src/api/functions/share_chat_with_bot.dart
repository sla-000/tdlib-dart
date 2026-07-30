// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Shares a chat after pressing a keyboardButtonTypeRequestChat button with
/// the bot
/// Returns [Ok]
@immutable
class ShareChatWithBot extends TdFunction {
  const ShareChatWithBot({
    required this.source,
    required this.buttonId,
    required this.sharedChatId,
    required this.onlyCheck,
  });

  /// [source] Source of the button
  final KeyboardButtonSource source;

  /// [buttonId] Identifier of the button
  final int buttonId;

  /// [sharedChatId] Identifier of the shared chat
  final int sharedChatId;

  /// [onlyCheck] Pass true to check that the chat can be shared by the button
  /// instead of actually sharing it. Doesn't check bot_is_member and
  /// bot_administrator_rights restrictions. If the bot must be a member, then
  /// all chats from getGroupsInCommon and all chats, where the user can add the
  /// bot, are suitable. In the latter case the bot will be automatically added
  /// to the chat. If the bot must be an administrator, then all chats, where
  /// the bot already has requested rights or can be added to administrators by
  /// the user, are suitable. In the latter case the bot will be automatically
  /// granted requested rights
  final bool onlyCheck;

  static const String constructor = 'shareChatWithBot';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'source': source.toJson(),
        'button_id': buttonId,
        'shared_chat_id': sharedChatId,
        'only_check': onlyCheck,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ShareChatWithBot &&
          const DeepCollectionEquality().equals(other.source, source) &&
          const DeepCollectionEquality().equals(other.buttonId, buttonId) &&
          const DeepCollectionEquality()
              .equals(other.sharedChatId, sharedChatId) &&
          const DeepCollectionEquality().equals(other.onlyCheck, onlyCheck));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(source),
        const DeepCollectionEquality().hash(buttonId),
        const DeepCollectionEquality().hash(sharedChatId),
        const DeepCollectionEquality().hash(onlyCheck)
      ]);
}
