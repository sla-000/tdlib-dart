// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A bot managed by another bot was created by the user
@immutable
class MessageManagedBotCreated extends MessageContent {
  const MessageManagedBotCreated({
    required this.botUserId,
    required this.managerBotUserId,
  });

  /// [botUserId] User identifier of the created bot
  final int botUserId;

  /// [managerBotUserId] Identifier of the bot which will manage the new bot
  final int managerBotUserId;

  static const String constructor = 'messageManagedBotCreated';

  static MessageManagedBotCreated? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageManagedBotCreated(
      botUserId: (json['bot_user_id'] as int?) ?? 0,
      managerBotUserId: (json['manager_bot_user_id'] as int?) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'bot_user_id': botUserId,
        'manager_bot_user_id': managerBotUserId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is MessageManagedBotCreated &&
          const DeepCollectionEquality().equals(other.botUserId, botUserId) &&
          const DeepCollectionEquality()
              .equals(other.managerBotUserId, managerBotUserId));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(botUserId),
        const DeepCollectionEquality().hash(managerBotUserId)
      ]);
}
