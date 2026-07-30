// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Represents a date range
@immutable
class DateRange extends TdObject {
  const DateRange({
    required this.startDate,
    required this.endDate,
  });

  /// [startDate] Point in time (Unix timestamp) at which the date range begins
  final int startDate;

  /// [endDate] Point in time (Unix timestamp) at which the date range ends
  final int endDate;

  static const String constructor = 'dateRange';

  static DateRange? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return DateRange(
      startDate: json['start_date'] as int,
      endDate: json['end_date'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'start_date': startDate,
        'end_date': endDate,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is DateRange &&
          const DeepCollectionEquality().equals(other.startDate, startDate) &&
          const DeepCollectionEquality().equals(other.endDate, endDate));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(startDate),
        const DeepCollectionEquality().hash(endDate)
      ]);
}
