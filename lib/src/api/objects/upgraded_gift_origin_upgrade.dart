// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The gift was obtained by upgrading of a previously received gift
@immutable
class UpgradedGiftOriginUpgrade extends UpgradedGiftOrigin {
  const UpgradedGiftOriginUpgrade({
    required this.giftMessageId,
  });

  /// [giftMessageId] Identifier of the message with the regular gift that was
  /// upgraded; may be 0 or an identifier of a deleted message
  final int giftMessageId;

  static const String constructor = 'upgradedGiftOriginUpgrade';

  static UpgradedGiftOriginUpgrade? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpgradedGiftOriginUpgrade(
      giftMessageId: (json['gift_message_id'] as int?) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'gift_message_id': giftMessageId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpgradedGiftOriginUpgrade &&
          const DeepCollectionEquality()
              .equals(other.giftMessageId, giftMessageId));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(giftMessageId)]);
}
