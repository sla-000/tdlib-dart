import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Show the date or time in a long way (March 17, 2022 or 22:45:00)
@immutable
class DateTimePartPrecisionLong extends DateTimePartPrecision {
  const DateTimePartPrecisionLong();

  static const String constructor = 'dateTimePartPrecisionLong';

  static DateTimePartPrecisionLong? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const DateTimePartPrecisionLong();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
