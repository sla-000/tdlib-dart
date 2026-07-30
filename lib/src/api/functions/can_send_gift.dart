// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Checks whether a gift with next_send_date in the future can be sent
/// already
/// Returns [CanSendGiftResult]
@immutable
class CanSendGift extends TdFunction {
  const CanSendGift({
    required this.giftId,
  });

  /// [giftId] Identifier of the gift to send
  final int giftId;

  static const String constructor = 'canSendGift';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'gift_id': giftId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is CanSendGift &&
          const DeepCollectionEquality().equals(other.giftId, giftId));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(giftId)]);
}
