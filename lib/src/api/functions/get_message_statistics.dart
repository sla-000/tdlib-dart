// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns detailed statistics about a message. Can be used only if
/// messageProperties.can_get_statistics == true
/// Returns [MessageStatistics]
@immutable
class GetMessageStatistics extends TdFunction {
  const GetMessageStatistics({
    required this.chatId,
    required this.messageId,
    required this.isDark,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [messageId] Message identifier
  final int messageId;

  /// [isDark] Pass true if a dark theme is used by the application
  final bool isDark;

  static const String constructor = 'getMessageStatistics';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_id': messageId,
        'is_dark': isDark,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetMessageStatistics &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality().equals(other.messageId, messageId) &&
          const DeepCollectionEquality().equals(other.isDark, isDark));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(messageId),
        const DeepCollectionEquality().hash(isDark)
      ]);
}
