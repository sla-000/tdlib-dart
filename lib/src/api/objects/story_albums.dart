// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Represents a list of story albums
@immutable
class StoryAlbums extends TdObject {
  const StoryAlbums({
    required this.albums,
  });

  /// [albums] List of story albums
  final List<StoryAlbum> albums;

  static const String constructor = 'storyAlbums';

  static StoryAlbums? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StoryAlbums(
      albums: List<StoryAlbum>.from(
          ((json['albums'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => StoryAlbum.fromJson(item as Map<String, dynamic>?))
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'albums': albums.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is StoryAlbums &&
          const DeepCollectionEquality().equals(other.albums, albums));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(albums)]);
}
