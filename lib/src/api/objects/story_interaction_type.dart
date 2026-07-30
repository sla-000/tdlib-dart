// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes type of interaction with a story
@immutable
abstract class StoryInteractionType extends TdObject {
  const StoryInteractionType();

  static const String constructor = 'storyInteractionType';

  /// Inherited by:
  /// [StoryInteractionTypeForward]
  /// [StoryInteractionTypeRepost]
  /// [StoryInteractionTypeView]
  static StoryInteractionType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case StoryInteractionTypeForward.constructor:
        return StoryInteractionTypeForward.fromJson(json);
      case StoryInteractionTypeRepost.constructor:
        return StoryInteractionTypeRepost.fromJson(json);
      case StoryInteractionTypeView.constructor:
        return StoryInteractionTypeView.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is StoryInteractionType);

  @override
  int get hashCode => runtimeType.hashCode;
}
