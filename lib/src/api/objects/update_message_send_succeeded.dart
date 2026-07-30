// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A message has been successfully sent
@immutable
class UpdateMessageSendSucceeded extends Update {
  const UpdateMessageSendSucceeded({
    required this.message,
    required this.oldMessageId,
  });

  /// [message] The sent message. Almost any field of the new message can be
  /// different from the corresponding field of the original message. For
  /// example, the field scheduling_state may change, making the message
  /// scheduled, or non-scheduled
  final Message message;

  /// [oldMessageId] The previous temporary message identifier
  final int oldMessageId;

  static const String constructor = 'updateMessageSendSucceeded';

  static UpdateMessageSendSucceeded? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateMessageSendSucceeded(
      message: Message.fromJson(json['message'] as Map<String, dynamic>?)!,
      oldMessageId: json['old_message_id'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'message': message.toJson(),
        'old_message_id': oldMessageId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpdateMessageSendSucceeded &&
          const DeepCollectionEquality().equals(other.message, message) &&
          const DeepCollectionEquality()
              .equals(other.oldMessageId, oldMessageId));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(message),
        const DeepCollectionEquality().hash(oldMessageId)
      ]);
}
