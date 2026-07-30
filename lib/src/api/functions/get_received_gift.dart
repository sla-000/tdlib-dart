// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns information about a received gift
/// Returns [ReceivedGift]
@immutable
class GetReceivedGift extends TdFunction {
  const GetReceivedGift({
    required this.receivedGiftId,
  });

  /// [receivedGiftId] Identifier of the gift
  final String receivedGiftId;

  static const String constructor = 'getReceivedGift';

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
          other is GetReceivedGift &&
          const DeepCollectionEquality()
              .equals(other.receivedGiftId, receivedGiftId));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(receivedGiftId)]);
}
