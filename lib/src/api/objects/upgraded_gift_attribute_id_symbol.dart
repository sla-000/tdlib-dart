// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Identifier of a gift symbol
@immutable
class UpgradedGiftAttributeIdSymbol extends UpgradedGiftAttributeId {
  const UpgradedGiftAttributeIdSymbol({
    required this.stickerId,
  });

  /// [stickerId] Identifier of the sticker representing the symbol
  final int stickerId;

  static const String constructor = 'upgradedGiftAttributeIdSymbol';

  static UpgradedGiftAttributeIdSymbol? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpgradedGiftAttributeIdSymbol(
      stickerId: (json['sticker_id'] is int
              ? json['sticker_id'] as int
              : int.tryParse(json['sticker_id']?.toString() ?? '')) ??
          0,
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
          other is UpgradedGiftAttributeIdSymbol &&
          const DeepCollectionEquality().equals(other.stickerId, stickerId));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(stickerId)]);
}
