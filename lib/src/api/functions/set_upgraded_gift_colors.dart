import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
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
        'upgraded_gift_colors_id': upgradedGiftColorsId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
