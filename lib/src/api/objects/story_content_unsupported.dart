// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A story content that is not supported in the current TDLib version
@immutable
class StoryContentUnsupported extends StoryContent {
  const StoryContentUnsupported();

  static const String constructor = 'storyContentUnsupported';

  static StoryContentUnsupported? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const StoryContentUnsupported();
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
      (other.runtimeType == runtimeType && other is StoryContentUnsupported);

  @override
  int get hashCode => runtimeType.hashCode;
}
