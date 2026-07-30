import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
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
      giftMessageId: json['gift_message_id'] as int,
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
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
