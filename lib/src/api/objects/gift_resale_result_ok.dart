import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Operation was successfully completed
@immutable
class GiftResaleResultOk extends GiftResaleResult {
  const GiftResaleResultOk({
    required this.receivedGiftId,
  });

  /// [receivedGiftId] Unique identifier of the received gift; only for the
  /// gifts sent to the current user
  final String receivedGiftId;

  static const String constructor = 'giftResaleResultOk';

  static GiftResaleResultOk? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GiftResaleResultOk(
      receivedGiftId: json['received_gift_id'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'received_gift_id': receivedGiftId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
