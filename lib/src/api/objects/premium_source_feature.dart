// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A user tried to use a Premium feature
@immutable
class PremiumSourceFeature extends PremiumSource {
  const PremiumSourceFeature({
    required this.feature,
  });

  /// [feature] The used feature
  final PremiumFeature feature;

  static const String constructor = 'premiumSourceFeature';

  static PremiumSourceFeature? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PremiumSourceFeature(
      feature:
          PremiumFeature.fromJson(json['feature'] as Map<String, dynamic>?)!,
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
          other is PremiumSourceFeature &&
          const DeepCollectionEquality().equals(other.feature, feature));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(feature)]);
}
