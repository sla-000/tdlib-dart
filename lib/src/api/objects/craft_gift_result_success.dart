import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Crafting was successful
@immutable
class CraftGiftResultSuccess extends CraftGiftResult {
  const CraftGiftResultSuccess({
    required this.gift,
    required this.receivedGiftId,
  });

  /// [gift] The created gift
  final UpgradedGift gift;

  /// [receivedGiftId] Unique identifier of the received gift for the current
  /// user
  final String receivedGiftId;

  static const String constructor = 'craftGiftResultSuccess';

  static CraftGiftResultSuccess? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return CraftGiftResultSuccess(
      gift: UpgradedGift.fromJson(json['gift'] as Map<String, dynamic>?)!,
      receivedGiftId: json['received_gift_id'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'gift': gift.toJson(),
        'received_gift_id': receivedGiftId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
