// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains statistics about interactions with a message sent in the chat or
/// a story posted on behalf of the chat
@immutable
class ChatStatisticsInteractionInfo extends TdObject {
  const ChatStatisticsInteractionInfo({
    required this.objectType,
    required this.viewCount,
    required this.forwardCount,
    required this.reactionCount,
  });

  /// [objectType] Type of the object
  final ChatStatisticsObjectType objectType;

  /// [viewCount] Number of times the object was viewed
  final int viewCount;

  /// [forwardCount] Number of times the object was forwarded
  final int forwardCount;

  /// [reactionCount] Number of times reactions were added to the object
  final int reactionCount;

  static const String constructor = 'chatStatisticsInteractionInfo';

  static ChatStatisticsInteractionInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatStatisticsInteractionInfo(
      objectType: ChatStatisticsObjectType.fromJson(
          json['object_type'] as Map<String, dynamic>?)!,
      viewCount: (json['view_count'] as int?) ?? 0,
      forwardCount: (json['forward_count'] as int?) ?? 0,
      reactionCount: (json['reaction_count'] as int?) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'object_type': objectType.toJson(),
        'view_count': viewCount,
        'forward_count': forwardCount,
        'reaction_count': reactionCount,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ChatStatisticsInteractionInfo &&
          const DeepCollectionEquality().equals(other.objectType, objectType) &&
          const DeepCollectionEquality().equals(other.viewCount, viewCount) &&
          const DeepCollectionEquality()
              .equals(other.forwardCount, forwardCount) &&
          const DeepCollectionEquality()
              .equals(other.reactionCount, reactionCount));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(objectType),
        const DeepCollectionEquality().hash(viewCount),
        const DeepCollectionEquality().hash(forwardCount),
        const DeepCollectionEquality().hash(reactionCount)
      ]);
}
