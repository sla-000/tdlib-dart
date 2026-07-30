// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes a statistical graph
@immutable
abstract class StatisticalGraph extends TdObject {
  const StatisticalGraph();

  static const String constructor = 'statisticalGraph';

  /// Inherited by:
  /// [StatisticalGraphAsync]
  /// [StatisticalGraphData]
  /// [StatisticalGraphError]
  static StatisticalGraph? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case StatisticalGraphAsync.constructor:
        return StatisticalGraphAsync.fromJson(json);
      case StatisticalGraphData.constructor:
        return StatisticalGraphData.fromJson(json);
      case StatisticalGraphError.constructor:
        return StatisticalGraphError.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is StatisticalGraph);

  @override
  int get hashCode => runtimeType.hashCode;
}
