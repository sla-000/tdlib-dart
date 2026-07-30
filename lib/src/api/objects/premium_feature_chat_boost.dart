// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The ability to boost chats
@immutable
class PremiumFeatureChatBoost extends PremiumFeature {
  const PremiumFeatureChatBoost();

  static const String constructor = 'premiumFeatureChatBoost';

  static PremiumFeatureChatBoost? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PremiumFeatureChatBoost();
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
      (other.runtimeType == runtimeType && other is PremiumFeatureChatBoost);

  @override
  int get hashCode => runtimeType.hashCode;
}
