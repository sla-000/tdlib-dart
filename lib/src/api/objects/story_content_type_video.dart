// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A video story
@immutable
class StoryContentTypeVideo extends StoryContentType {
  const StoryContentTypeVideo();

  static const String constructor = 'storyContentTypeVideo';

  static StoryContentTypeVideo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const StoryContentTypeVideo();
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
      (other.runtimeType == runtimeType && other is StoryContentTypeVideo);

  @override
  int get hashCode => runtimeType.hashCode;
}
