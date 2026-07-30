// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns information about a sticker set by its identifier
/// Returns [StickerSet]
@immutable
class GetStickerSet extends TdFunction {
  const GetStickerSet({
    required this.setId,
  });

  /// [setId] Identifier of the sticker set
  final int setId;

  static const String constructor = 'getStickerSet';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'set_id': setId.toString(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetStickerSet &&
          const DeepCollectionEquality().equals(other.setId, setId));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(setId)]);
}
