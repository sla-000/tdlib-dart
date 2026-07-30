import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The gift was assigned from blockchain and isn't owned by the current user.
/// The gift can't be transferred, resold or withdrawn to blockchain
@immutable
class UpgradedGiftOriginBlockchain extends UpgradedGiftOrigin {
  const UpgradedGiftOriginBlockchain();

  static const String constructor = 'upgradedGiftOriginBlockchain';

  static UpgradedGiftOriginBlockchain? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const UpgradedGiftOriginBlockchain();
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
