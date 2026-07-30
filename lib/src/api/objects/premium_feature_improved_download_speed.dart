// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Improved download speed
@immutable
class PremiumFeatureImprovedDownloadSpeed extends PremiumFeature {
  const PremiumFeatureImprovedDownloadSpeed();

  static const String constructor = 'premiumFeatureImprovedDownloadSpeed';

  static PremiumFeatureImprovedDownloadSpeed? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PremiumFeatureImprovedDownloadSpeed();
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
          other is PremiumFeatureImprovedDownloadSpeed);

  @override
  int get hashCode => runtimeType.hashCode;
}
