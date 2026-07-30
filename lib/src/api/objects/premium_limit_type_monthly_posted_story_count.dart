// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The maximum number of stories posted per month
@immutable
class PremiumLimitTypeMonthlyPostedStoryCount extends PremiumLimitType {
  const PremiumLimitTypeMonthlyPostedStoryCount();

  static const String constructor = 'premiumLimitTypeMonthlyPostedStoryCount';

  static PremiumLimitTypeMonthlyPostedStoryCount? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PremiumLimitTypeMonthlyPostedStoryCount();
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
          other is PremiumLimitTypeMonthlyPostedStoryCount);

  @override
  int get hashCode => runtimeType.hashCode;
}
