// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A detailed statistics about TON Grams earned by the current user
@immutable
class GramRevenueStatistics extends TdObject {
  const GramRevenueStatistics({
    required this.revenueByDayGraph,
    required this.status,
    required this.usdRate,
  });

  /// [revenueByDayGraph] A graph containing amount of revenue in a given day
  final StatisticalGraph revenueByDayGraph;

  /// [status] Amount of earned revenue
  final GramRevenueStatus status;

  /// [usdRate] Current conversion rate of nanogram to USD cents
  final double usdRate;

  static const String constructor = 'gramRevenueStatistics';

  static GramRevenueStatistics? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GramRevenueStatistics(
      revenueByDayGraph: StatisticalGraph.fromJson(
          json['revenue_by_day_graph'] as Map<String, dynamic>?)!,
      status:
          GramRevenueStatus.fromJson(json['status'] as Map<String, dynamic>?)!,
      usdRate: (json['usd_rate'] as num).toDouble(),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'revenue_by_day_graph': revenueByDayGraph.toJson(),
        'status': status.toJson(),
        'usd_rate': usdRate,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GramRevenueStatistics &&
          const DeepCollectionEquality()
              .equals(other.revenueByDayGraph, revenueByDayGraph) &&
          const DeepCollectionEquality().equals(other.status, status) &&
          const DeepCollectionEquality().equals(other.usdRate, usdRate));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(revenueByDayGraph),
        const DeepCollectionEquality().hash(status),
        const DeepCollectionEquality().hash(usdRate)
      ]);
}
