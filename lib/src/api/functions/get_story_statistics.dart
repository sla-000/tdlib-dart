// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns detailed statistics about a story. Can be used only if
/// story.can_get_statistics == true
/// Returns [StoryStatistics]
@immutable
class GetStoryStatistics extends TdFunction {
  const GetStoryStatistics({
    required this.chatId,
    required this.storyId,
    required this.isDark,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [storyId] Story identifier
  final int storyId;

  /// [isDark] Pass true if a dark theme is used by the application
  final bool isDark;

  static const String constructor = 'getStoryStatistics';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'story_id': storyId,
        'is_dark': isDark,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetStoryStatistics &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality().equals(other.storyId, storyId) &&
          const DeepCollectionEquality().equals(other.isDark, isDark));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(storyId),
        const DeepCollectionEquality().hash(isDark)
      ]);
}
