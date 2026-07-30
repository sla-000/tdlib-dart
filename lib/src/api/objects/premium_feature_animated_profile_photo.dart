// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Profile photo animation on message and chat screens
@immutable
class PremiumFeatureAnimatedProfilePhoto extends PremiumFeature {
  const PremiumFeatureAnimatedProfilePhoto();

  static const String constructor = 'premiumFeatureAnimatedProfilePhoto';

  static PremiumFeatureAnimatedProfilePhoto? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PremiumFeatureAnimatedProfilePhoto();
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
          other is PremiumFeatureAnimatedProfilePhoto);

  @override
  int get hashCode => runtimeType.hashCode;
}
