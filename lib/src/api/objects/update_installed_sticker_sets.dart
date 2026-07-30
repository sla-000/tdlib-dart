// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The list of installed sticker sets was updated
@immutable
class UpdateInstalledStickerSets extends Update {
  const UpdateInstalledStickerSets({
    required this.stickerType,
    required this.stickerSetIds,
  });

  /// [stickerType] Type of the affected stickers
  final StickerType stickerType;

  /// [stickerSetIds] The new list of installed ordinary sticker sets
  final List<int> stickerSetIds;

  static const String constructor = 'updateInstalledStickerSets';

  static UpdateInstalledStickerSets? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateInstalledStickerSets(
      stickerType:
          StickerType.fromJson(json['sticker_type'] as Map<String, dynamic>?)!,
      stickerSetIds: List<int>.from(
          ((json['sticker_set_ids'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => item)
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'sticker_type': stickerType.toJson(),
        'sticker_set_ids': stickerSetIds.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpdateInstalledStickerSets &&
          const DeepCollectionEquality()
              .equals(other.stickerType, stickerType) &&
          const DeepCollectionEquality()
              .equals(other.stickerSetIds, stickerSetIds));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(stickerType),
        const DeepCollectionEquality().hash(stickerSetIds)
      ]);
}
