// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The gift was crafted from other gifts
@immutable
class UpgradedGiftOriginCraft extends UpgradedGiftOrigin {
  const UpgradedGiftOriginCraft();

  static const String constructor = 'upgradedGiftOriginCraft';

  static UpgradedGiftOriginCraft? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const UpgradedGiftOriginCraft();
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
      (other.runtimeType == runtimeType && other is UpgradedGiftOriginCraft);

  @override
  int get hashCode => runtimeType.hashCode;
}
