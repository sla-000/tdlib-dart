// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A photo story
@immutable
class StoryContentTypePhoto extends StoryContentType {
  const StoryContentTypePhoto();

  static const String constructor = 'storyContentTypePhoto';

  static StoryContentTypePhoto? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const StoryContentTypePhoto();
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
      (other.runtimeType == runtimeType && other is StoryContentTypePhoto);

  @override
  int get hashCode => runtimeType.hashCode;
}
