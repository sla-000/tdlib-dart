import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains the type of the content of a story
@immutable
abstract class StoryContentType extends TdObject {
  const StoryContentType();

  static const String constructor = 'storyContentType';

  /// Inherited by:
  /// [StoryContentTypeLive]
  /// [StoryContentTypePhoto]
  /// [StoryContentTypeUnsupported]
  /// [StoryContentTypeVideo]
  static StoryContentType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case StoryContentTypeLive.constructor:
        return StoryContentTypeLive.fromJson(json);
      case StoryContentTypePhoto.constructor:
        return StoryContentTypePhoto.fromJson(json);
      case StoryContentTypeUnsupported.constructor:
        return StoryContentTypeUnsupported.fromJson(json);
      case StoryContentTypeVideo.constructor:
        return StoryContentTypeVideo.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
