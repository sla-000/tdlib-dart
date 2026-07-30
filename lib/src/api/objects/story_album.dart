// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes album of stories
@immutable
class StoryAlbum extends TdObject {
  const StoryAlbum({
    required this.id,
    required this.name,
    this.photoIcon,
    this.videoIcon,
  });

  /// [id] Unique identifier of the album
  final int id;

  /// [name] Name of the album
  final String name;

  /// [photoIcon] Icon of the album; may be null if none
  final Photo? photoIcon;

  /// [videoIcon] Video icon of the album; may be null if none
  final Video? videoIcon;

  static const String constructor = 'storyAlbum';

  static StoryAlbum? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StoryAlbum(
      id: (json['id'] as int?) ?? 0,
      name: (json['name'] as String?) ?? '',
      photoIcon: Photo.fromJson(json['photo_icon'] as Map<String, dynamic>?),
      videoIcon: Video.fromJson(json['video_icon'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'name': name,
        'photo_icon': photoIcon?.toJson(),
        'video_icon': videoIcon?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is StoryAlbum &&
          const DeepCollectionEquality().equals(other.id, id) &&
          const DeepCollectionEquality().equals(other.name, name) &&
          const DeepCollectionEquality().equals(other.photoIcon, photoIcon) &&
          const DeepCollectionEquality().equals(other.videoIcon, videoIcon));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(name),
        const DeepCollectionEquality().hash(photoIcon),
        const DeepCollectionEquality().hash(videoIcon)
      ]);
}
