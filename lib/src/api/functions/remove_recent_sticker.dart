// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Removes a sticker from the list of recently used stickers
/// Returns [Ok]
@immutable
class RemoveRecentSticker extends TdFunction {
  const RemoveRecentSticker({
    required this.isAttached,
    required this.sticker,
  });

  /// [isAttached] Pass true to remove the sticker from the list of stickers
  /// recently attached to photo or video files; pass false to remove the
  /// sticker from the list of recently sent stickers
  final bool isAttached;

  /// [sticker] Sticker file to delete
  final InputFile sticker;

  static const String constructor = 'removeRecentSticker';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'is_attached': isAttached,
        'sticker': sticker.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is RemoveRecentSticker &&
          const DeepCollectionEquality().equals(other.isAttached, isAttached) &&
          const DeepCollectionEquality().equals(other.sticker, sticker));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(isAttached),
        const DeepCollectionEquality().hash(sticker)
      ]);
}
