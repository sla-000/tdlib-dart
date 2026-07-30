// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The time must be shown relative to the current time ([in ] X seconds,
/// minutes, hours, days, months, years [ago])
@immutable
class DateTimeFormattingTypeRelative extends DateTimeFormattingType {
  const DateTimeFormattingTypeRelative();

  static const String constructor = 'dateTimeFormattingTypeRelative';

  static DateTimeFormattingTypeRelative? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const DateTimeFormattingTypeRelative();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is DateTimeFormattingTypeRelative);

  @override
  int get hashCode => runtimeType.hashCode;
}
