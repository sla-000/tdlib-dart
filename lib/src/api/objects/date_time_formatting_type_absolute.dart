// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The date and time must be shown as absolute timestamps
@immutable
class DateTimeFormattingTypeAbsolute extends DateTimeFormattingType {
  const DateTimeFormattingTypeAbsolute({
    required this.timePrecision,
    required this.datePrecision,
    required this.showDayOfWeek,
  });

  /// [timePrecision] The precision with which hours, minutes and seconds are
  /// shown
  final DateTimePartPrecision timePrecision;

  /// [datePrecision] The precision with which the date is shown
  final DateTimePartPrecision datePrecision;

  /// [showDayOfWeek] True, if the day of week must be shown
  final bool showDayOfWeek;

  static const String constructor = 'dateTimeFormattingTypeAbsolute';

  static DateTimeFormattingTypeAbsolute? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return DateTimeFormattingTypeAbsolute(
      timePrecision: DateTimePartPrecision.fromJson(
          json['time_precision'] as Map<String, dynamic>?)!,
      datePrecision: DateTimePartPrecision.fromJson(
          json['date_precision'] as Map<String, dynamic>?)!,
      showDayOfWeek: (json['show_day_of_week'] as bool?) ?? false,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'time_precision': timePrecision.toJson(),
        'date_precision': datePrecision.toJson(),
        'show_day_of_week': showDayOfWeek,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is DateTimeFormattingTypeAbsolute &&
          const DeepCollectionEquality()
              .equals(other.timePrecision, timePrecision) &&
          const DeepCollectionEquality()
              .equals(other.datePrecision, datePrecision) &&
          const DeepCollectionEquality()
              .equals(other.showDayOfWeek, showDayOfWeek));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(timePrecision),
        const DeepCollectionEquality().hash(datePrecision),
        const DeepCollectionEquality().hash(showDayOfWeek)
      ]);
}
