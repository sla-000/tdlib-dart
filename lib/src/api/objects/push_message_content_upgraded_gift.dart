// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A message with an upgraded gift
@immutable
class PushMessageContentUpgradedGift extends PushMessageContent {
  const PushMessageContentUpgradedGift({
    required this.isUpgrade,
    required this.isPrepaidUpgrade,
  });

  /// [isUpgrade] True, if the gift was obtained by upgrading of a previously
  /// received gift; otherwise, if is_prepaid_upgrade == false, then this is a
  /// transferred or resold gift
  final bool isUpgrade;

  /// [isPrepaidUpgrade] True, if the message is about completion of prepaid
  /// upgrade of the gift instead of actual receiving of a new gift
  final bool isPrepaidUpgrade;

  static const String constructor = 'pushMessageContentUpgradedGift';

  static PushMessageContentUpgradedGift? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PushMessageContentUpgradedGift(
      isUpgrade: json['is_upgrade'] as bool,
      isPrepaidUpgrade: json['is_prepaid_upgrade'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'is_upgrade': isUpgrade,
        'is_prepaid_upgrade': isPrepaidUpgrade,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is PushMessageContentUpgradedGift &&
          const DeepCollectionEquality().equals(other.isUpgrade, isUpgrade) &&
          const DeepCollectionEquality()
              .equals(other.isPrepaidUpgrade, isPrepaidUpgrade));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(isUpgrade),
        const DeepCollectionEquality().hash(isPrepaidUpgrade)
      ]);
}
