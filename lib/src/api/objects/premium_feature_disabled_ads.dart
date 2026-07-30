// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Disabled ads
@immutable
class PremiumFeatureDisabledAds extends PremiumFeature {
  const PremiumFeatureDisabledAds();

  static const String constructor = 'premiumFeatureDisabledAds';

  static PremiumFeatureDisabledAds? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PremiumFeatureDisabledAds();
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
      (other.runtimeType == runtimeType && other is PremiumFeatureDisabledAds);

  @override
  int get hashCode => runtimeType.hashCode;
}
