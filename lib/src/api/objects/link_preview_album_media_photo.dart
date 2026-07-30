// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The media is a photo
@immutable
class LinkPreviewAlbumMediaPhoto extends LinkPreviewAlbumMedia {
  const LinkPreviewAlbumMediaPhoto({
    required this.photo,
  });

  /// [photo] Photo description
  final Photo photo;

  static const String constructor = 'linkPreviewAlbumMediaPhoto';

  static LinkPreviewAlbumMediaPhoto? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return LinkPreviewAlbumMediaPhoto(
      photo: Photo.fromJson(json['photo'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'photo': photo.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is LinkPreviewAlbumMediaPhoto &&
          const DeepCollectionEquality().equals(other.photo, photo));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(photo)]);
}
