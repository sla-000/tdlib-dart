// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Changes name of an album of stories. If the album is owned by a supergroup
/// or a channel chat, then requires can_edit_stories administrator right in
/// the chat. Returns the changed album
/// Returns [StoryAlbum]
@immutable
class SetStoryAlbumName extends TdFunction {
  const SetStoryAlbumName({
    required this.chatId,
    required this.storyAlbumId,
    required this.name,
  });

  /// [chatId] Identifier of the chat that owns the stories
  final int chatId;

  /// [storyAlbumId] Identifier of the story album
  final int storyAlbumId;

  /// [name] New name of the album; 1-12 characters
  final String name;

  static const String constructor = 'setStoryAlbumName';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'story_album_id': storyAlbumId,
        'name': name,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SetStoryAlbumName &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality()
              .equals(other.storyAlbumId, storyAlbumId) &&
          const DeepCollectionEquality().equals(other.name, name));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(storyAlbumId),
        const DeepCollectionEquality().hash(name)
      ]);
}
