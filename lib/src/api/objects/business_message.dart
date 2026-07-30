// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes a message from a business account as received by a bot
@immutable
class BusinessMessage extends TdObject {
  const BusinessMessage({
    required this.message,
    this.replyToMessage,
  });

  /// [message] The message
  final Message message;

  /// [replyToMessage] Message that is replied by the message in the same chat;
  /// may be null if none
  final Message? replyToMessage;

  static const String constructor = 'businessMessage';

  static BusinessMessage? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BusinessMessage(
      message: Message.fromJson(json['message'] as Map<String, dynamic>?)!,
      replyToMessage:
          Message.fromJson(json['reply_to_message'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'message': message.toJson(),
        'reply_to_message': replyToMessage?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is BusinessMessage &&
          const DeepCollectionEquality().equals(other.message, message) &&
          const DeepCollectionEquality()
              .equals(other.replyToMessage, replyToMessage));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(message),
        const DeepCollectionEquality().hash(replyToMessage)
      ]);
}
