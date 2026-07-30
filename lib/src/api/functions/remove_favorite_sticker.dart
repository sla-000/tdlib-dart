// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Removes a sticker from the list of favorite stickers
/// Returns [Ok]
@immutable
class RemoveFavoriteSticker extends TdFunction {
  const RemoveFavoriteSticker({
    required this.sticker,
  });

  /// [sticker] Sticker file to delete from the list
  final InputFile sticker;

  static const String constructor = 'removeFavoriteSticker';

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
          other is RemoveFavoriteSticker &&
          const DeepCollectionEquality().equals(other.sticker, sticker));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(sticker)]);
}
