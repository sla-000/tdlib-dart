// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Allowed to set a premium application icons
@immutable
class PremiumFeatureAppIcons extends PremiumFeature {
  const PremiumFeatureAppIcons();

  static const String constructor = 'premiumFeatureAppIcons';

  static PremiumFeatureAppIcons? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PremiumFeatureAppIcons();
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
      (other.runtimeType == runtimeType && other is PremiumFeatureAppIcons);

  @override
  int get hashCode => runtimeType.hashCode;
}
