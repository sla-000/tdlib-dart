// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
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
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is PremiumFeatureTextComposition);

  @override
  int get hashCode => runtimeType.hashCode;
}
