// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Changes the slow mode delay of a chat. Available only for supergroups;
/// requires can_restrict_members administrator right
/// Returns [Ok]
@immutable
class SetChatSlowModeDelay extends TdFunction {
  const SetChatSlowModeDelay({
    required this.chatId,
    required this.slowModeDelay,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [slowModeDelay] New slow mode delay for the chat, in seconds; must be one
  /// of 0, 5, 10, 30, 60, 300, 900, 3600
  final int slowModeDelay;

  static const String constructor = 'setChatSlowModeDelay';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'slow_mode_delay': slowModeDelay,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SetChatSlowModeDelay &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality()
              .equals(other.slowModeDelay, slowModeDelay));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(slowModeDelay)
      ]);
}
