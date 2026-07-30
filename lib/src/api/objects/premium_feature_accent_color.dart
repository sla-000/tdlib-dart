// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The ability to choose accent color for replies and user profile
@immutable
class PremiumFeatureAccentColor extends PremiumFeature {
  const PremiumFeatureAccentColor();

  static const String constructor = 'premiumFeatureAccentColor';

  static PremiumFeatureAccentColor? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PremiumFeatureAccentColor();
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
      (other.runtimeType == runtimeType && other is PremiumFeatureAccentColor);

  @override
  int get hashCode => runtimeType.hashCode;
}
