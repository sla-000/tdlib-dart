// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Stories of the current user are displayed before stories of non-Premium
/// contacts, supergroups, and channels
@immutable
class PremiumStoryFeaturePriorityOrder extends PremiumStoryFeature {
  const PremiumStoryFeaturePriorityOrder();

  static const String constructor = 'premiumStoryFeaturePriorityOrder';

  static PremiumStoryFeaturePriorityOrder? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PremiumStoryFeaturePriorityOrder();
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
          other is PremiumStoryFeaturePriorityOrder);

  @override
  int get hashCode => runtimeType.hashCode;
}
