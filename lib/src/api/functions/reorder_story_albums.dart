// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Changes order of story albums. If the albums are owned by a supergroup or
/// a channel chat, then requires can_edit_stories administrator right in the
/// chat
/// Returns [Ok]
@immutable
class ReorderStoryAlbums extends TdFunction {
  const ReorderStoryAlbums({
    required this.chatId,
    required this.storyAlbumIds,
  });

  /// [chatId] Identifier of the chat that owns the stories
  final int chatId;

  /// [storyAlbumIds] New order of story albums
  final List<int> storyAlbumIds;

  static const String constructor = 'reorderStoryAlbums';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'story_album_ids': storyAlbumIds.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ReorderStoryAlbums &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality()
              .equals(other.storyAlbumIds, storyAlbumIds));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(storyAlbumIds)
      ]);
}
