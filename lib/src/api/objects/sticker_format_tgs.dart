// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The sticker is an animation in TGS format
@immutable
class StickerFormatTgs extends StickerFormat {
  const StickerFormatTgs();

  static const String constructor = 'stickerFormatTgs';

  static StickerFormatTgs? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const StickerFormatTgs();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is StickerFormatTgs);

  @override
  int get hashCode => runtimeType.hashCode;
}
