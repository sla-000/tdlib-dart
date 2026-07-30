// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The ability to use links and formatting in story caption, and use
/// inputStoryAreaTypeLink areas
@immutable
class PremiumStoryFeatureLinksAndFormatting extends PremiumStoryFeature {
  const PremiumStoryFeatureLinksAndFormatting();

  static const String constructor = 'premiumStoryFeatureLinksAndFormatting';

  static PremiumStoryFeatureLinksAndFormatting? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PremiumStoryFeatureLinksAndFormatting();
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
          other is PremiumStoryFeatureLinksAndFormatting);

  @override
  int get hashCode => runtimeType.hashCode;
}
