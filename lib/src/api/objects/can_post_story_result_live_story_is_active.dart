import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
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
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
