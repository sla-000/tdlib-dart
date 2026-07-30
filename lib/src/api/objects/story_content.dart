// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains the content of a story
@immutable
abstract class StoryContent extends TdObject {
  const StoryContent();

  static const String constructor = 'storyContent';

  /// Inherited by:
  /// [StoryContentLive]
  /// [StoryContentPhoto]
  /// [StoryContentUnsupported]
  /// [StoryContentVideo]
  static StoryContent? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case StoryContentLive.constructor:
        return StoryContentLive.fromJson(json);
      case StoryContentPhoto.constructor:
        return StoryContentPhoto.fromJson(json);
      case StoryContentUnsupported.constructor:
        return StoryContentUnsupported.fromJson(json);
      case StoryContentVideo.constructor:
        return StoryContentVideo.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is StoryContent);

  @override
  int get hashCode => runtimeType.hashCode;
}
