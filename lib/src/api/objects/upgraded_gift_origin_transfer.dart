// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The gift was transferred from another owner
@immutable
class UpgradedGiftOriginTransfer extends UpgradedGiftOrigin {
  const UpgradedGiftOriginTransfer();

  static const String constructor = 'upgradedGiftOriginTransfer';

  static UpgradedGiftOriginTransfer? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const UpgradedGiftOriginTransfer();
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
      (other.runtimeType == runtimeType && other is UpgradedGiftOriginTransfer);

  @override
  int get hashCode => runtimeType.hashCode;
}
