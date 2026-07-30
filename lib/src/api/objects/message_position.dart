// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains information about a message in a specific position
@immutable
class MessagePosition extends TdObject {
  const MessagePosition({
    required this.position,
    required this.messageId,
    required this.date,
  });

  /// [position] 0-based message position in the full list of suitable messages
  final int position;

  /// [messageId] Message identifier
  final int messageId;

  /// [date] Point in time (Unix timestamp) when the message was sent
  final int date;

  static const String constructor = 'messagePosition';

  static MessagePosition? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessagePosition(
      position: (json['position'] as int?) ?? 0,
      messageId: (json['message_id'] as int?) ?? 0,
      date: (json['date'] as int?) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'position': position,
        'message_id': messageId,
        'date': date,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is MessagePosition &&
          const DeepCollectionEquality().equals(other.position, position) &&
          const DeepCollectionEquality().equals(other.messageId, messageId) &&
          const DeepCollectionEquality().equals(other.date, date));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(position),
        const DeepCollectionEquality().hash(messageId),
        const DeepCollectionEquality().hash(date)
      ]);
}
