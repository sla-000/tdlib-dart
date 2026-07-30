// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The original story was posted by an unknown user
@immutable
class StoryOriginHiddenUser extends StoryOrigin {
  const StoryOriginHiddenUser({
    required this.posterName,
  });

  /// [posterName] Name of the user or the chat that posted the story
  final String posterName;

  static const String constructor = 'storyOriginHiddenUser';

  static StoryOriginHiddenUser? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StoryOriginHiddenUser(
      posterName: json['poster_name'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'poster_name': posterName,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is StoryOriginHiddenUser &&
          const DeepCollectionEquality().equals(other.posterName, posterName));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(posterName)]);
}
