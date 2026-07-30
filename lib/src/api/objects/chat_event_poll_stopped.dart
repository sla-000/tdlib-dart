// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A poll in a message was stopped
@immutable
class ChatEventPollStopped extends ChatEventAction {
  const ChatEventPollStopped({
    required this.message,
  });

  /// [message] The message with the poll
  final Message message;

  static const String constructor = 'chatEventPollStopped';

  static ChatEventPollStopped? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventPollStopped(
      message: Message.fromJson(json['message'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'message': message.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ChatEventPollStopped &&
          const DeepCollectionEquality().equals(other.message, message));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(message)]);
}
