import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The maximum number of owned bots
@immutable
class PremiumLimitTypeOwnedBotCount extends PremiumLimitType {
  const PremiumLimitTypeOwnedBotCount();

  static const String constructor = 'premiumLimitTypeOwnedBotCount';

  static PremiumLimitTypeOwnedBotCount? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PremiumLimitTypeOwnedBotCount();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
