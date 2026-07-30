// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A user tried to use a Premium story feature
@immutable
class PremiumSourceStoryFeature extends PremiumSource {
  const PremiumSourceStoryFeature({
    required this.feature,
  });

  /// [feature] The used feature
  final PremiumStoryFeature feature;

  static const String constructor = 'premiumSourceStoryFeature';

  static PremiumSourceStoryFeature? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PremiumSourceStoryFeature(
      feature: PremiumStoryFeature.fromJson(
          json['feature'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'feature': feature.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is PremiumSourceStoryFeature &&
          const DeepCollectionEquality().equals(other.feature, feature));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(feature)]);
}
