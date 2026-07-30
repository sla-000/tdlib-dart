// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Allowed to use more reactions
@immutable
class PremiumFeatureUniqueReactions extends PremiumFeature {
  const PremiumFeatureUniqueReactions();

  static const String constructor = 'premiumFeatureUniqueReactions';

  static PremiumFeatureUniqueReactions? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PremiumFeatureUniqueReactions();
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
          other is PremiumFeatureUniqueReactions);

  @override
  int get hashCode => runtimeType.hashCode;
}
