// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Show the date or time in a short way (17.03.22 or 22:45)
@immutable
class DateTimePartPrecisionShort extends DateTimePartPrecision {
  const DateTimePartPrecisionShort();

  static const String constructor = 'dateTimePartPrecisionShort';

  static DateTimePartPrecisionShort? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const DateTimePartPrecisionShort();
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
      (other.runtimeType == runtimeType && other is DateTimePartPrecisionShort);

  @override
  int get hashCode => runtimeType.hashCode;
}
