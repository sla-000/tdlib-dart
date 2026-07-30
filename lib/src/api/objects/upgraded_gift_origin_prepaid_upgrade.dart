import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The sender or receiver of the message has paid for upgrade of the gift,
/// which has been completed
@immutable
class UpgradedGiftOriginPrepaidUpgrade extends UpgradedGiftOrigin {
  const UpgradedGiftOriginPrepaidUpgrade();

  static const String constructor = 'upgradedGiftOriginPrepaidUpgrade';

  static UpgradedGiftOriginPrepaidUpgrade? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const UpgradedGiftOriginPrepaidUpgrade();
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
