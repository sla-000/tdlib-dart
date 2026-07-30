// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes a media from a link preview album
@immutable
abstract class LinkPreviewAlbumMedia extends TdObject {
  const LinkPreviewAlbumMedia();

  static const String constructor = 'linkPreviewAlbumMedia';

  /// Inherited by:
  /// [LinkPreviewAlbumMediaPhoto]
  /// [LinkPreviewAlbumMediaVideo]
  static LinkPreviewAlbumMedia? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case LinkPreviewAlbumMediaPhoto.constructor:
        return LinkPreviewAlbumMediaPhoto.fromJson(json);
      case LinkPreviewAlbumMediaVideo.constructor:
        return LinkPreviewAlbumMediaVideo.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is LinkPreviewAlbumMedia);

  @override
  int get hashCode => runtimeType.hashCode;
}
