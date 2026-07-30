// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Allowed to use premium stickers with unique effects
@immutable
class PremiumFeatureUniqueStickers extends PremiumFeature {
  const PremiumFeatureUniqueStickers();

  static const String constructor = 'premiumFeatureUniqueStickers';

  static PremiumFeatureUniqueStickers? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PremiumFeatureUniqueStickers();
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
          other is PremiumFeatureUniqueStickers);

  @override
  int get hashCode => runtimeType.hashCode;
}
