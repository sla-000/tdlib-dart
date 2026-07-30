// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Installs/uninstalls or activates/archives a sticker set
/// Returns [Ok]
@immutable
class ChangeStickerSet extends TdFunction {
  const ChangeStickerSet({
    required this.setId,
    required this.isInstalled,
    required this.isArchived,
  });

  /// [setId] Identifier of the sticker set
  final int setId;

  /// [isInstalled] The new value of is_installed
  final bool isInstalled;

  /// [isArchived] The new value of is_archived. A sticker set can't be
  /// installed and archived simultaneously
  final bool isArchived;

  static const String constructor = 'changeStickerSet';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'set_id': setId.toString(),
        'is_installed': isInstalled,
        'is_archived': isArchived,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ChangeStickerSet &&
          const DeepCollectionEquality().equals(other.setId, setId) &&
          const DeepCollectionEquality()
              .equals(other.isInstalled, isInstalled) &&
          const DeepCollectionEquality().equals(other.isArchived, isArchived));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(setId),
        const DeepCollectionEquality().hash(isInstalled),
        const DeepCollectionEquality().hash(isArchived)
      ]);
}
