// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Send away messages only in the specified time span
@immutable
class BusinessAwayMessageScheduleCustom extends BusinessAwayMessageSchedule {
  const BusinessAwayMessageScheduleCustom({
    required this.startDate,
    required this.endDate,
  });

  /// [startDate] Point in time (Unix timestamp) when the away messages will
  /// start to be sent
  final int startDate;

  /// [endDate] Point in time (Unix timestamp) when the away messages will stop
  /// to be sent
  final int endDate;

  static const String constructor = 'businessAwayMessageScheduleCustom';

  static BusinessAwayMessageScheduleCustom? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BusinessAwayMessageScheduleCustom(
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
          other is BusinessAwayMessageScheduleCustom &&
          const DeepCollectionEquality().equals(other.startDate, startDate) &&
          const DeepCollectionEquality().equals(other.endDate, endDate));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(startDate),
        const DeepCollectionEquality().hash(endDate)
      ]);
}
