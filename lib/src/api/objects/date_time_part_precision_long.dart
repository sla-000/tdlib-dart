// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
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
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is DateTimePartPrecisionLong);

  @override
  int get hashCode => runtimeType.hashCode;
}
