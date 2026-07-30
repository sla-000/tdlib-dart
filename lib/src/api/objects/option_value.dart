// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Represents the value of an option
@immutable
abstract class OptionValue extends TdObject {
  const OptionValue();

  static const String constructor = 'optionValue';

  /// Inherited by:
  /// [OptionValueBoolean]
  /// [OptionValueEmpty]
  /// [OptionValueInteger]
  /// [OptionValueString]
  static OptionValue? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case OptionValueBoolean.constructor:
        return OptionValueBoolean.fromJson(json);
      case OptionValueEmpty.constructor:
        return OptionValueEmpty.fromJson(json);
      case OptionValueInteger.constructor:
        return OptionValueInteger.fromJson(json);
      case OptionValueString.constructor:
        return OptionValueString.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is OptionValue);

  @override
  int get hashCode => runtimeType.hashCode;
}
