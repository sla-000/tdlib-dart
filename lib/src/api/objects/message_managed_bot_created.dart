import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A bot managed by another bot was created by the user
@immutable
class MessageManagedBotCreated extends MessageContent {
  const MessageManagedBotCreated({
    required this.botUserId,
  });

  /// [botUserId] User identifier of the created bot
  final int botUserId;

  static const String constructor = 'messageManagedBotCreated';

  static MessageManagedBotCreated? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageManagedBotCreated(
      botUserId: json['bot_user_id'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'bot_user_id': botUserId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
