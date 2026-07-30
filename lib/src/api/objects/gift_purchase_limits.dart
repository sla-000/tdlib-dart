import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes the maximum number of times that a specific gift can be
/// purchased
@immutable
class GiftPurchaseLimits extends TdObject {
  const GiftPurchaseLimits({
    required this.totalCount,
    required this.remainingCount,
  });

  /// [totalCount] The maximum number of times the gifts can be purchased
  final int totalCount;

  /// [remainingCount] Number of remaining times the gift can be purchased
  final int remainingCount;

  static const String constructor = 'giftPurchaseLimits';

  static GiftPurchaseLimits? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GiftPurchaseLimits(
      totalCount: json['total_count'] as int,
      remainingCount: json['remaining_count'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'total_count': totalCount,
        'remaining_count': remainingCount,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
