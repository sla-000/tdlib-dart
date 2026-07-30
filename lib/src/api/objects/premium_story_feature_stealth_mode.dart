// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The ability to hide the fact that the user viewed other's stories
@immutable
class PremiumStoryFeatureStealthMode extends PremiumStoryFeature {
  const PremiumStoryFeatureStealthMode();

  static const String constructor = 'premiumStoryFeatureStealthMode';

  static PremiumStoryFeatureStealthMode? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PremiumStoryFeatureStealthMode();
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
          other is PremiumStoryFeatureStealthMode);

  @override
  int get hashCode => runtimeType.hashCode;
}
