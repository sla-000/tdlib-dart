// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Changes the mask position of a mask sticker. The sticker must belong to a
/// mask sticker set that is owned by the current user
/// Returns [Ok]
@immutable
class SetStickerMaskPosition extends TdFunction {
  const SetStickerMaskPosition({
    required this.sticker,
    this.maskPosition,
  });

  /// [sticker] Sticker
  final InputFile sticker;

  /// [maskPosition] Position where the mask is placed; pass null to remove mask
  /// position
  final MaskPosition? maskPosition;

  static const String constructor = 'setStickerMaskPosition';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'sticker': sticker.toJson(),
        'mask_position': maskPosition?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SetStickerMaskPosition &&
          const DeepCollectionEquality().equals(other.sticker, sticker) &&
          const DeepCollectionEquality()
              .equals(other.maskPosition, maskPosition));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(sticker),
        const DeepCollectionEquality().hash(maskPosition)
      ]);
}
