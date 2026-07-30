// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns a list of sticker sets attached to a file, including regular,
/// mask, and emoji sticker sets. Currently, only animations, photos, and
/// videos can have attached sticker sets
/// Returns [StickerSets]
@immutable
class GetAttachedStickerSets extends TdFunction {
  const GetAttachedStickerSets({
    required this.fileId,
  });

  /// [fileId] File identifier
  final int fileId;

  static const String constructor = 'getAttachedStickerSets';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'file_id': fileId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetAttachedStickerSets &&
          const DeepCollectionEquality().equals(other.fileId, fileId));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(fileId)]);
}
