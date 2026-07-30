// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Changes the list of pinned stories on a chat page; requires
/// can_edit_stories administrator right in the chat
/// Returns [Ok]
@immutable
class SetChatPinnedStories extends TdFunction {
  const SetChatPinnedStories({
    required this.chatId,
    required this.storyIds,
  });

  /// [chatId] Identifier of the chat that posted the stories
  final int chatId;

  /// [storyIds] New list of pinned stories. All stories must be posted to the
  /// chat page first. There can be up to getOption("pinned_story_count_max")
  /// pinned stories on a chat page
  final List<int> storyIds;

  static const String constructor = 'setChatPinnedStories';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'story_ids': storyIds.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SetChatPinnedStories &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality().equals(other.storyIds, storyIds));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(storyIds)
      ]);
}
