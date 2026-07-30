// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A message has been pinned
@immutable
class MessagePinMessage extends MessageContent {
  const MessagePinMessage({
    required this.messageId,
  });

  /// [messageId] Identifier of the pinned message, can be an identifier of a
  /// deleted message or 0
  final int messageId;

  static const String constructor = 'messagePinMessage';

  static MessagePinMessage? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessagePinMessage(
      messageId: (json['message_id'] as int?) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'message_id': messageId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is MessagePinMessage &&
          const DeepCollectionEquality().equals(other.messageId, messageId));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(messageId)]);
}
