// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The link is a link to an album of stories. Call searchPublicChat with the
/// given username, then call getStoryAlbumStories with the received chat
/// identifier and the given story album identifier, then show the story album
/// if received
@immutable
class InternalLinkTypeStoryAlbum extends InternalLinkType {
  const InternalLinkTypeStoryAlbum({
    required this.storyAlbumOwnerUsername,
    required this.storyAlbumId,
  });

  /// [storyAlbumOwnerUsername] Username of the owner of the story album
  final String storyAlbumOwnerUsername;

  /// [storyAlbumId] Story album identifier
  final int storyAlbumId;

  static const String constructor = 'internalLinkTypeStoryAlbum';

  static InternalLinkTypeStoryAlbum? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypeStoryAlbum(
      storyAlbumOwnerUsername: json['story_album_owner_username'] as String,
      storyAlbumId: json['story_album_id'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'story_album_owner_username': storyAlbumOwnerUsername,
        'story_album_id': storyAlbumId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is InternalLinkTypeStoryAlbum &&
          const DeepCollectionEquality()
              .equals(other.storyAlbumOwnerUsername, storyAlbumOwnerUsername) &&
          const DeepCollectionEquality()
              .equals(other.storyAlbumId, storyAlbumId));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(storyAlbumOwnerUsername),
        const DeepCollectionEquality().hash(storyAlbumId)
      ]);
}
