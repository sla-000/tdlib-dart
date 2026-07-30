// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns examples of possible upgraded gifts for a regular gift
/// Returns [GiftUpgradePreview]
@immutable
class GetGiftUpgradePreview extends TdFunction {
  const GetGiftUpgradePreview({
    required this.regularGiftId,
  });

  /// [regularGiftId] Identifier of the regular gift
  final int regularGiftId;

  static const String constructor = 'getGiftUpgradePreview';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'regular_gift_id': regularGiftId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetGiftUpgradePreview &&
          const DeepCollectionEquality()
              .equals(other.regularGiftId, regularGiftId));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(regularGiftId)]);
}
