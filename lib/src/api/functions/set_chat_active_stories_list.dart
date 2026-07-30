// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Changes story list in which stories from the chat are shown
/// Returns [Ok]
@immutable
class SetChatActiveStoriesList extends TdFunction {
  const SetChatActiveStoriesList({
    required this.chatId,
    required this.storyList,
  });

  /// [chatId] Identifier of the chat that posted stories
  final int chatId;

  /// [storyList] New list for active stories posted by the chat
  final StoryList storyList;

  static const String constructor = 'setChatActiveStoriesList';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'story_list': storyList.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SetChatActiveStoriesList &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality().equals(other.storyList, storyList));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(storyList)
      ]);
}
