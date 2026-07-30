// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
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
      receivedGiftId: (json['received_gift_id'] as String?) ?? '',
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
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GiftResaleResultOk &&
          const DeepCollectionEquality()
              .equals(other.receivedGiftId, receivedGiftId));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(receivedGiftId)]);
}
