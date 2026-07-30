// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns a list of installed sticker sets
/// Returns [StickerSets]
@immutable
class GetInstalledStickerSets extends TdFunction {
  const GetInstalledStickerSets({
    required this.stickerType,
  });

  /// [stickerType] Type of the sticker sets to return
  final StickerType stickerType;

  static const String constructor = 'getInstalledStickerSets';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'sticker_type': stickerType.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetInstalledStickerSets &&
          const DeepCollectionEquality()
              .equals(other.stickerType, stickerType));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(stickerType)]);
}
