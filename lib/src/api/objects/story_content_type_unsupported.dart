// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A story of unknown content type
@immutable
class StoryContentTypeUnsupported extends StoryContentType {
  const StoryContentTypeUnsupported();

  static const String constructor = 'storyContentTypeUnsupported';

  static StoryContentTypeUnsupported? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const StoryContentTypeUnsupported();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is StoryContentTypeUnsupported);

  @override
  int get hashCode => runtimeType.hashCode;
}
