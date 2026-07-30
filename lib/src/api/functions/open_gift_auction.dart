// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Informs TDLib that a gift auction was opened by the user
/// Returns [Ok]
@immutable
class OpenGiftAuction extends TdFunction {
  const OpenGiftAuction({
    required this.giftId,
  });

  /// [giftId] Identifier of the gift, which auction was opened
  final int giftId;

  static const String constructor = 'openGiftAuction';

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
          other is OpenGiftAuction &&
          const DeepCollectionEquality().equals(other.giftId, giftId));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(giftId)]);
}
