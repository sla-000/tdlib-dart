// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Allowed to use many additional features for stories
@immutable
class BusinessFeatureUpgradedStories extends BusinessFeature {
  const BusinessFeatureUpgradedStories();

  static const String constructor = 'businessFeatureUpgradedStories';

  static BusinessFeatureUpgradedStories? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const BusinessFeatureUpgradedStories();
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
          other is BusinessFeatureUpgradedStories);

  @override
  int get hashCode => runtimeType.hashCode;
}
