// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns emoji corresponding to a sticker. The list is only for
/// informational purposes, because a sticker is always sent with a fixed
/// emoji from the corresponding Sticker object
/// Returns [Emojis]
@immutable
class GetStickerEmojis extends TdFunction {
  const GetStickerEmojis({
    required this.sticker,
  });

  /// [sticker] Sticker file identifier
  final InputFile sticker;

  static const String constructor = 'getStickerEmojis';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'sticker': sticker.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetStickerEmojis &&
          const DeepCollectionEquality().equals(other.sticker, sticker));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(sticker)]);
}
