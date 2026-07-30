// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
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
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is PremiumLimitTypeOwnedBotCount);

  @override
  int get hashCode => runtimeType.hashCode;
}
