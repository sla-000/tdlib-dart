import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Deletes a story album. If the album is owned by a supergroup or a channel
/// chat, then requires can_edit_stories administrator right in the chat
/// Returns [Ok]
@immutable
class DeleteStoryAlbum extends TdFunction {
  const DeleteStoryAlbum({
    required this.chatId,
    required this.storyAlbumId,
  });

  /// [chatId] Identifier of the chat that owns the stories
  final int chatId;

  /// [storyAlbumId] Identifier of the story album
  final int storyAlbumId;

  static const String constructor = 'deleteStoryAlbum';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'story_album_id': storyAlbumId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
