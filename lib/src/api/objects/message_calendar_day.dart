// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains information about found messages sent on a specific day
@immutable
class MessageCalendarDay extends TdObject {
  const MessageCalendarDay({
    required this.totalCount,
    required this.message,
  });

  /// [totalCount] Total number of found messages sent on the day
  final int totalCount;

  /// [message] First message sent on the day
  final Message message;

  static const String constructor = 'messageCalendarDay';

  static MessageCalendarDay? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageCalendarDay(
      totalCount: (json['total_count'] as int?) ?? 0,
      message: Message.fromJson(json['message'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'total_count': totalCount,
        'message': message.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is MessageCalendarDay &&
          const DeepCollectionEquality().equals(other.totalCount, totalCount) &&
          const DeepCollectionEquality().equals(other.message, message));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(totalCount),
        const DeepCollectionEquality().hash(message)
      ]);
}
