// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A value with information about its recent changes
@immutable
class StatisticalValue extends TdObject {
  const StatisticalValue({
    required this.value,
    required this.previousValue,
    required this.growthRatePercentage,
  });

  /// [value] The current value
  final double value;

  /// [previousValue] The value for the previous day
  final double previousValue;

  /// [growthRatePercentage] The growth rate of the value, as a percentage
  final double growthRatePercentage;

  static const String constructor = 'statisticalValue';

  static StatisticalValue? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StatisticalValue(
      value: (json['value'] as num).toDouble(),
      previousValue: (json['previous_value'] as num).toDouble(),
      growthRatePercentage: (json['growth_rate_percentage'] as num).toDouble(),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'value': value,
        'previous_value': previousValue,
        'growth_rate_percentage': growthRatePercentage,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is StatisticalValue &&
          const DeepCollectionEquality().equals(other.value, value) &&
          const DeepCollectionEquality()
              .equals(other.previousValue, previousValue) &&
          const DeepCollectionEquality()
              .equals(other.growthRatePercentage, growthRatePercentage));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(value),
        const DeepCollectionEquality().hash(previousValue),
        const DeepCollectionEquality().hash(growthRatePercentage)
      ]);
}
