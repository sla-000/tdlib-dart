// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns a story
/// Returns [Story]
@immutable
class GetStory extends TdFunction {
  const GetStory({
    required this.storyPosterChatId,
    required this.storyId,
    required this.onlyLocal,
  });

  /// [storyPosterChatId] Identifier of the chat that posted the story
  final int storyPosterChatId;

  /// [storyId] Story identifier
  final int storyId;

  /// [onlyLocal] Pass true to get only locally available information without
  /// sending network requests
  final bool onlyLocal;

  static const String constructor = 'getStory';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'story_poster_chat_id': storyPosterChatId,
        'story_id': storyId,
        'only_local': onlyLocal,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetStory &&
          const DeepCollectionEquality()
              .equals(other.storyPosterChatId, storyPosterChatId) &&
          const DeepCollectionEquality().equals(other.storyId, storyId) &&
          const DeepCollectionEquality().equals(other.onlyLocal, onlyLocal));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(storyPosterChatId),
        const DeepCollectionEquality().hash(storyId),
        const DeepCollectionEquality().hash(onlyLocal)
      ]);
}
