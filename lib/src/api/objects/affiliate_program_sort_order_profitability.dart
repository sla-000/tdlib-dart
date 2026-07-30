// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The affiliate programs must be sorted by the profitability
@immutable
class AffiliateProgramSortOrderProfitability extends AffiliateProgramSortOrder {
  const AffiliateProgramSortOrderProfitability();

  static const String constructor = 'affiliateProgramSortOrderProfitability';

  static AffiliateProgramSortOrderProfitability? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const AffiliateProgramSortOrderProfitability();
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
      (other.runtimeType == runtimeType &&
          other is AffiliateProgramSortOrderProfitability);

  @override
  int get hashCode => runtimeType.hashCode;
}
