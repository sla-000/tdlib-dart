// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes date and time formatting
@immutable
abstract class DateTimeFormattingType extends TdObject {
  const DateTimeFormattingType();

  static const String constructor = 'dateTimeFormattingType';

  /// Inherited by:
  /// [DateTimeFormattingTypeAbsolute]
  /// [DateTimeFormattingTypeRelative]
  static DateTimeFormattingType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case DateTimeFormattingTypeAbsolute.constructor:
        return DateTimeFormattingTypeAbsolute.fromJson(json);
      case DateTimeFormattingTypeRelative.constructor:
        return DateTimeFormattingTypeRelative.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is DateTimeFormattingType);

  @override
  int get hashCode => runtimeType.hashCode;
}
