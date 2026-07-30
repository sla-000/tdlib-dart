// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns information about a button of type
/// inlineKeyboardButtonTypeLoginUrl. The method needs to be called when the
/// user presses the button
/// Returns [LoginUrlInfo]
@immutable
class GetLoginUrlInfo extends TdFunction {
  const GetLoginUrlInfo({
    required this.chatId,
    required this.messageId,
    required this.buttonId,
  });

  /// [chatId] Chat identifier of the message with the button
  final int chatId;

  /// [messageId] Message identifier of the message with the button. The message
  /// must not be scheduled
  final int messageId;

  /// [buttonId] Button identifier
  final int buttonId;

  static const String constructor = 'getLoginUrlInfo';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_id': messageId,
        'button_id': buttonId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetLoginUrlInfo &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality().equals(other.messageId, messageId) &&
          const DeepCollectionEquality().equals(other.buttonId, buttonId));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(messageId),
        const DeepCollectionEquality().hash(buttonId)
      ]);
}
