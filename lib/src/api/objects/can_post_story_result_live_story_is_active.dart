// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The user or the chat has an active live story. The live story must be
/// deleted first
@immutable
class CanPostStoryResultLiveStoryIsActive extends CanPostStoryResult {
  const CanPostStoryResultLiveStoryIsActive({
    required this.storyId,
  });

  /// [storyId] Identifier of the active live story
  final int storyId;

  static const String constructor = 'canPostStoryResultLiveStoryIsActive';

  static CanPostStoryResultLiveStoryIsActive? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return CanPostStoryResultLiveStoryIsActive(
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
          other is CanPostStoryResultLiveStoryIsActive &&
          const DeepCollectionEquality().equals(other.storyId, storyId));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(storyId)]);
}
