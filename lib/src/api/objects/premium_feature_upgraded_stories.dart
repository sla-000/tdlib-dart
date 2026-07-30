// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Allowed to use many additional features for stories
@immutable
class PremiumFeatureUpgradedStories extends PremiumFeature {
  const PremiumFeatureUpgradedStories();

  static const String constructor = 'premiumFeatureUpgradedStories';

  static PremiumFeatureUpgradedStories? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PremiumFeatureUpgradedStories();
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
          other is PremiumFeatureUpgradedStories);

  @override
  int get hashCode => runtimeType.hashCode;
}
