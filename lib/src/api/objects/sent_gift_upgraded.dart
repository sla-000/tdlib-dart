// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Upgraded gift
@immutable
class SentGiftUpgraded extends SentGift {
  const SentGiftUpgraded({
    required this.gift,
  });

  /// [gift] The gift
  final UpgradedGift gift;

  static const String constructor = 'sentGiftUpgraded';

  static SentGiftUpgraded? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SentGiftUpgraded(
      gift: UpgradedGift.fromJson(json['gift'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'gift': gift.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SentGiftUpgraded &&
          const DeepCollectionEquality().equals(other.gift, gift));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(gift)]);
}
