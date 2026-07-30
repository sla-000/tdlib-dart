// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Changes the value of the default disable_notification parameter, used when
/// a message is sent to a chat
/// Returns [Ok]
@immutable
class ToggleChatDefaultDisableNotification extends TdFunction {
  const ToggleChatDefaultDisableNotification({
    required this.chatId,
    required this.defaultDisableNotification,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [defaultDisableNotification] New value of default_disable_notification
  final bool defaultDisableNotification;

  static const String constructor = 'toggleChatDefaultDisableNotification';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'default_disable_notification': defaultDisableNotification,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ToggleChatDefaultDisableNotification &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality().equals(
              other.defaultDisableNotification, defaultDisableNotification));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(defaultDisableNotification)
      ]);
}
