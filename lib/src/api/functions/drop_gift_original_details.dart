// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Drops original details for an upgraded gift
/// Returns [Ok]
@immutable
class DropGiftOriginalDetails extends TdFunction {
  const DropGiftOriginalDetails({
    required this.receivedGiftId,
    required this.starCount,
  });

  /// [receivedGiftId] Identifier of the gift
  final String receivedGiftId;

  /// [starCount] The Telegram Star amount required to pay for the operation
  final int starCount;

  static const String constructor = 'dropGiftOriginalDetails';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'received_gift_id': receivedGiftId,
        'star_count': starCount,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is DropGiftOriginalDetails &&
          const DeepCollectionEquality()
              .equals(other.receivedGiftId, receivedGiftId) &&
          const DeepCollectionEquality().equals(other.starCount, starCount));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(receivedGiftId),
        const DeepCollectionEquality().hash(starCount)
      ]);
}
