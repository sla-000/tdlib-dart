import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The ability to compose text with AI
@immutable
class PremiumFeatureTextComposition extends PremiumFeature {
  const PremiumFeatureTextComposition();

  static const String constructor = 'premiumFeatureTextComposition';

  static PremiumFeatureTextComposition? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PremiumFeatureTextComposition();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
