// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The ability to set a custom emoji as a forum topic icon
@immutable
class PremiumFeatureForumTopicIcon extends PremiumFeature {
  const PremiumFeatureForumTopicIcon();

  static const String constructor = 'premiumFeatureForumTopicIcon';

  static PremiumFeatureForumTopicIcon? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PremiumFeatureForumTopicIcon();
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
          other is PremiumFeatureForumTopicIcon);

  @override
  int get hashCode => runtimeType.hashCode;
}
