import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
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
      showDayOfWeek: json['show_day_of_week'] as bool,
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
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
