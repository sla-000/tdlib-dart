// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Changes cover of a video story. Can be called only if story.can_be_edited
/// == true and the story isn't being edited now
/// Returns [Ok]
@immutable
class EditStoryCover extends TdFunction {
  const EditStoryCover({
    required this.storyPosterChatId,
    required this.storyId,
    required this.coverFrameTimestamp,
  });

  /// [storyPosterChatId] Identifier of the chat that posted the story
  final int storyPosterChatId;

  /// [storyId] Identifier of the story to edit
  final int storyId;

  /// [coverFrameTimestamp] New timestamp of the frame, which will be used as
  /// video thumbnail
  final double coverFrameTimestamp;

  static const String constructor = 'editStoryCover';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'story_poster_chat_id': storyPosterChatId,
        'story_id': storyId,
        'cover_frame_timestamp': coverFrameTimestamp,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is EditStoryCover &&
          const DeepCollectionEquality()
              .equals(other.storyPosterChatId, storyPosterChatId) &&
          const DeepCollectionEquality().equals(other.storyId, storyId) &&
          const DeepCollectionEquality()
              .equals(other.coverFrameTimestamp, coverFrameTimestamp));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(storyPosterChatId),
        const DeepCollectionEquality().hash(storyId),
        const DeepCollectionEquality().hash(coverFrameTimestamp)
      ]);
}
