// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes a photo
@immutable
class Photo extends TdObject {
  const Photo({
    required this.hasStickers,
    this.minithumbnail,
    required this.sizes,
  });

  /// [hasStickers] True, if stickers were added to the photo. The list of
  /// corresponding sticker sets can be received using getAttachedStickerSets
  final bool hasStickers;

  /// [minithumbnail] Photo minithumbnail; may be null
  final Minithumbnail? minithumbnail;

  /// [sizes] Available variants of the photo, in different sizes
  final List<PhotoSize> sizes;

  static const String constructor = 'photo';

  static Photo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Photo(
      hasStickers: json['has_stickers'] as bool,
      minithumbnail: Minithumbnail.fromJson(
          json['minithumbnail'] as Map<String, dynamic>?),
      sizes: List<PhotoSize>.from(
          ((json['sizes'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => PhotoSize.fromJson(item))
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'has_stickers': hasStickers,
        'minithumbnail': minithumbnail?.toJson(),
        'sizes': sizes.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is Photo &&
          const DeepCollectionEquality()
              .equals(other.hasStickers, hasStickers) &&
          const DeepCollectionEquality()
              .equals(other.minithumbnail, minithumbnail) &&
          const DeepCollectionEquality().equals(other.sizes, sizes));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(hasStickers),
        const DeepCollectionEquality().hash(minithumbnail),
        const DeepCollectionEquality().hash(sizes)
      ]);
}
