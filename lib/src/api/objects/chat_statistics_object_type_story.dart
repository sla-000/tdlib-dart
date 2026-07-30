// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes a story posted on behalf of the chat
@immutable
class ChatStatisticsObjectTypeStory extends ChatStatisticsObjectType {
  const ChatStatisticsObjectTypeStory({
    required this.storyId,
  });

  /// [storyId] Story identifier
  final int storyId;

  static const String constructor = 'chatStatisticsObjectTypeStory';

  static ChatStatisticsObjectTypeStory? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatStatisticsObjectTypeStory(
      storyId: json['story_id'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'story_id': storyId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ChatStatisticsObjectTypeStory &&
          const DeepCollectionEquality().equals(other.storyId, storyId));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(storyId)]);
}
