// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The link is a link to a media album consisting of photos and videos
@immutable
class LinkPreviewTypeAlbum extends LinkPreviewType {
  const LinkPreviewTypeAlbum({
    required this.media,
    required this.caption,
  });

  /// [media] The list of album media
  final List<LinkPreviewAlbumMedia> media;

  /// [caption] Album caption
  final String caption;

  static const String constructor = 'linkPreviewTypeAlbum';

  static LinkPreviewTypeAlbum? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return LinkPreviewTypeAlbum(
      media: List<LinkPreviewAlbumMedia>.from(
          ((json['media'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) =>
                  LinkPreviewAlbumMedia.fromJson(item as Map<String, dynamic>?))
              .toList()),
      caption: (json['caption'] as String?) ?? '',
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'media': media.map((item) => item.toJson()).toList(),
        'caption': caption,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is LinkPreviewTypeAlbum &&
          const DeepCollectionEquality().equals(other.media, media) &&
          const DeepCollectionEquality().equals(other.caption, caption));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(media),
        const DeepCollectionEquality().hash(caption)
      ]);
}
