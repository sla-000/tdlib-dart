// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Paid messages were refunded
@immutable
class MessagePaidMessagesRefunded extends MessageContent {
  const MessagePaidMessagesRefunded({
    required this.messageCount,
    required this.starCount,
  });

  /// [messageCount] The number of refunded messages
  final int messageCount;

  /// [starCount] The number of refunded Telegram Stars
  final int starCount;

  static const String constructor = 'messagePaidMessagesRefunded';

  static MessagePaidMessagesRefunded? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessagePaidMessagesRefunded(
      messageCount: (json['message_count'] as int?) ?? 0,
      starCount: (json['star_count'] as int?) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'message_count': messageCount,
        'star_count': starCount,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is MessagePaidMessagesRefunded &&
          const DeepCollectionEquality()
              .equals(other.messageCount, messageCount) &&
          const DeepCollectionEquality().equals(other.starCount, starCount));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(messageCount),
        const DeepCollectionEquality().hash(starCount)
      ]);
}
