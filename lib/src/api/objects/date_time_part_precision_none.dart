import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Don't show the date or time
@immutable
class DateTimePartPrecisionNone extends DateTimePartPrecision {
  const DateTimePartPrecisionNone();

  static const String constructor = 'dateTimePartPrecisionNone';

  static DateTimePartPrecisionNone? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const DateTimePartPrecisionNone();
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
