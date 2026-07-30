import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes precision with which to show a date or a time
@immutable
abstract class DateTimePartPrecision extends TdObject {
  const DateTimePartPrecision();

  static const String constructor = 'dateTimePartPrecision';

  /// Inherited by:
  /// [DateTimePartPrecisionLong]
  /// [DateTimePartPrecisionNone]
  /// [DateTimePartPrecisionShort]
  static DateTimePartPrecision? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case DateTimePartPrecisionLong.constructor:
        return DateTimePartPrecisionLong.fromJson(json);
      case DateTimePartPrecisionNone.constructor:
        return DateTimePartPrecisionNone.fromJson(json);
      case DateTimePartPrecisionShort.constructor:
        return DateTimePartPrecisionShort.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
