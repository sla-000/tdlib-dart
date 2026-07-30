// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The link is a link to a sticker set. Call searchStickerSet with the given
/// sticker set name to process the link and show the sticker set. If the
/// sticker set is found and the user wants to add it, then call
/// changeStickerSet
@immutable
class InternalLinkTypeStickerSet extends InternalLinkType {
  const InternalLinkTypeStickerSet({
    required this.stickerSetName,
    required this.expectCustomEmoji,
  });

  /// [stickerSetName] Name of the sticker set
  final String stickerSetName;

  /// [expectCustomEmoji] True, if the sticker set is expected to contain custom
  /// emoji
  final bool expectCustomEmoji;

  static const String constructor = 'internalLinkTypeStickerSet';

  static InternalLinkTypeStickerSet? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypeStickerSet(
      stickerSetName: json['sticker_set_name'] as String,
      expectCustomEmoji: json['expect_custom_emoji'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'sticker_set_name': stickerSetName,
        'expect_custom_emoji': expectCustomEmoji,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is InternalLinkTypeStickerSet &&
          const DeepCollectionEquality()
              .equals(other.stickerSetName, stickerSetName) &&
          const DeepCollectionEquality()
              .equals(other.expectCustomEmoji, expectCustomEmoji));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(stickerSetName),
        const DeepCollectionEquality().hash(expectCustomEmoji)
      ]);
}
