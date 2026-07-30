// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes a promotion animation for a Business feature
@immutable
class BusinessFeaturePromotionAnimation extends TdObject {
  const BusinessFeaturePromotionAnimation({
    required this.feature,
    required this.animation,
  });

  /// [feature] Business feature
  final BusinessFeature feature;

  /// [animation] Promotion animation for the feature
  final Animation animation;

  static const String constructor = 'businessFeaturePromotionAnimation';

  static BusinessFeaturePromotionAnimation? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BusinessFeaturePromotionAnimation(
      feature:
          BusinessFeature.fromJson(json['feature'] as Map<String, dynamic>?)!,
      animation:
          Animation.fromJson(json['animation'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'feature': feature.toJson(),
        'animation': animation.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is BusinessFeaturePromotionAnimation &&
          const DeepCollectionEquality().equals(other.feature, feature) &&
          const DeepCollectionEquality().equals(other.animation, animation));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(feature),
        const DeepCollectionEquality().hash(animation)
      ]);
}
