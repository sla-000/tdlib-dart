// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Increased maximum upload file size
@immutable
class PremiumFeatureIncreasedUploadFileSize extends PremiumFeature {
  const PremiumFeatureIncreasedUploadFileSize();

  static const String constructor = 'premiumFeatureIncreasedUploadFileSize';

  static PremiumFeatureIncreasedUploadFileSize? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PremiumFeatureIncreasedUploadFileSize();
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
          other is PremiumFeatureIncreasedUploadFileSize);

  @override
  int get hashCode => runtimeType.hashCode;
}
