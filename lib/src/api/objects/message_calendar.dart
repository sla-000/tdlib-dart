// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains information about found messages, split by days according to the
/// option "utc_time_offset"
@immutable
class MessageCalendar extends TdObject {
  const MessageCalendar({
    required this.totalCount,
    required this.days,
  });

  /// [totalCount] Total number of found messages
  final int totalCount;

  /// [days] Information about messages sent
  final List<MessageCalendarDay> days;

  static const String constructor = 'messageCalendar';

  static MessageCalendar? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageCalendar(
      totalCount: (json['total_count'] as int?) ?? 0,
      days: List<MessageCalendarDay>.from(
          ((json['days'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) =>
                  MessageCalendarDay.fromJson(item as Map<String, dynamic>?))
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'total_count': totalCount,
        'days': days.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is MessageCalendar &&
          const DeepCollectionEquality().equals(other.totalCount, totalCount) &&
          const DeepCollectionEquality().equals(other.days, days));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(totalCount),
        const DeepCollectionEquality().hash(days)
      ]);
}
