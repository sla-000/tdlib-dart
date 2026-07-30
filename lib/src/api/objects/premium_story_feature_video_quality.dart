// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The ability to choose better quality for viewed stories
@immutable
class PremiumStoryFeatureVideoQuality extends PremiumStoryFeature {
  const PremiumStoryFeatureVideoQuality();

  static const String constructor = 'premiumStoryFeatureVideoQuality';

  static PremiumStoryFeatureVideoQuality? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PremiumStoryFeatureVideoQuality();
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
          other is PremiumStoryFeatureVideoQuality);

  @override
  int get hashCode => runtimeType.hashCode;
}
