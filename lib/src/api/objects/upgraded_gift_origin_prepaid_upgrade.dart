// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The sender or receiver of the message has paid for upgraid of the gift,
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
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpgradedGiftOriginPrepaidUpgrade);

  @override
  int get hashCode => runtimeType.hashCode;
}
