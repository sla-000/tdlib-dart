// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns the list of stories that posted by the given chat to its chat
/// page. If from_story_id == 0, then pinned stories are returned first. Then,
/// stories are returned in reverse chronological order (i.e., in order of
/// decreasing story_id). For optimal performance, the number of returned
/// stories is chosen by TDLib
/// Returns [Stories]
@immutable
class GetChatPostedToChatPageStories extends TdFunction {
  const GetChatPostedToChatPageStories({
    required this.chatId,
    required this.fromStoryId,
    required this.limit,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [fromStoryId] Identifier of the story starting from which stories must be
  /// returned; use 0 to get results from pinned and the newest story
  final int fromStoryId;

  /// [limit] The maximum number of stories to be returned. For optimal
  /// performance, the number of returned stories is chosen by TDLib and can be
  /// smaller than the specified limit
  final int limit;

  static const String constructor = 'getChatPostedToChatPageStories';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'from_story_id': fromStoryId,
        'limit': limit,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetChatPostedToChatPageStories &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality()
              .equals(other.fromStoryId, fromStoryId) &&
          const DeepCollectionEquality().equals(other.limit, limit));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(fromStoryId),
        const DeepCollectionEquality().hash(limit)
      ]);
}
