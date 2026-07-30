// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Changes color scheme for the current user based on an owned or a hosted
/// upgraded gift; for Telegram Premium users only
/// Returns [Ok]
@immutable
class SetUpgradedGiftColors extends TdFunction {
  const SetUpgradedGiftColors({
    required this.upgradedGiftColorsId,
  });

  /// [upgradedGiftColorsId] Identifier of the upgradedGiftColors scheme to use
  final int upgradedGiftColorsId;

  static const String constructor = 'setUpgradedGiftColors';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'upgraded_gift_colors_id': upgradedGiftColorsId.toString(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SetUpgradedGiftColors &&
          const DeepCollectionEquality()
              .equals(other.upgradedGiftColorsId, upgradedGiftColorsId));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(upgradedGiftColorsId)]);
}
