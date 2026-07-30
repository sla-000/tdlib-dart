// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Informs TDLib that a gift auction was closed by the user
/// Returns [Ok]
@immutable
class CloseGiftAuction extends TdFunction {
  const CloseGiftAuction({
    required this.giftId,
  });

  /// [giftId] Identifier of the gift, which auction was closed
  final int giftId;

  static const String constructor = 'closeGiftAuction';

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
          other is CloseGiftAuction &&
          const DeepCollectionEquality().equals(other.giftId, giftId));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(giftId)]);
}
