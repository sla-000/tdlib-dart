import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
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
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
