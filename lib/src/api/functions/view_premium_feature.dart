// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Informs TDLib that the user viewed detailed information about a Premium
/// feature on the Premium features screen
/// Returns [Ok]
@immutable
class ViewPremiumFeature extends TdFunction {
  const ViewPremiumFeature({
    required this.feature,
  });

  /// [feature] The viewed premium feature
  final PremiumFeature feature;

  static const String constructor = 'viewPremiumFeature';

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
          other is ViewPremiumFeature &&
          const DeepCollectionEquality().equals(other.feature, feature));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(feature)]);
}
