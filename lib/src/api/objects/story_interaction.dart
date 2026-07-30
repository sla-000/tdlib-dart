// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Represents interaction with a story
@immutable
class StoryInteraction extends TdObject {
  const StoryInteraction({
    required this.actorId,
    required this.interactionDate,
    this.blockList,
    required this.type,
  });

  /// [actorId] Identifier of the user or chat that made the interaction
  final MessageSender actorId;

  /// [interactionDate] Approximate point in time (Unix timestamp) when the
  /// interaction happened
  final int interactionDate;

  /// [blockList] Block list to which the actor is added; may be null if none or
  /// for chat stories
  final BlockList? blockList;

  /// [type] Type of the interaction
  final StoryInteractionType type;

  static const String constructor = 'storyInteraction';

  static StoryInteraction? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StoryInteraction(
      actorId:
          MessageSender.fromJson(json['actor_id'] as Map<String, dynamic>?)!,
      interactionDate: (json['interaction_date'] as int?) ?? 0,
      blockList:
          BlockList.fromJson(json['block_list'] as Map<String, dynamic>?),
      type:
          StoryInteractionType.fromJson(json['type'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'actor_id': actorId.toJson(),
        'interaction_date': interactionDate,
        'block_list': blockList?.toJson(),
        'type': type.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is StoryInteraction &&
          const DeepCollectionEquality().equals(other.actorId, actorId) &&
          const DeepCollectionEquality()
              .equals(other.interactionDate, interactionDate) &&
          const DeepCollectionEquality().equals(other.blockList, blockList) &&
          const DeepCollectionEquality().equals(other.type, type));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(actorId),
        const DeepCollectionEquality().hash(interactionDate),
        const DeepCollectionEquality().hash(blockList),
        const DeepCollectionEquality().hash(type)
      ]);
}
