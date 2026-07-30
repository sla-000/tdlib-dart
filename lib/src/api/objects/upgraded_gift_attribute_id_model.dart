// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Identifier of a gift model
@immutable
class UpgradedGiftAttributeIdModel extends UpgradedGiftAttributeId {
  const UpgradedGiftAttributeIdModel({
    required this.stickerId,
  });

  /// [stickerId] Identifier of the sticker representing the model
  final int stickerId;

  static const String constructor = 'upgradedGiftAttributeIdModel';

  static UpgradedGiftAttributeIdModel? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpgradedGiftAttributeIdModel(
      stickerId: int.tryParse(json['sticker_id']) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'sticker_id': stickerId.toString(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpgradedGiftAttributeIdModel &&
          const DeepCollectionEquality().equals(other.stickerId, stickerId));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(stickerId)]);
}
