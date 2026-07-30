// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A photo story
@immutable
class StoryContentPhoto extends StoryContent {
  const StoryContentPhoto({
    required this.photo,
  });

  /// [photo] The photo
  final Photo photo;

  static const String constructor = 'storyContentPhoto';

  static StoryContentPhoto? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StoryContentPhoto(
      photo: Photo.fromJson(json['photo'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'photo': photo.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is StoryContentPhoto &&
          const DeepCollectionEquality().equals(other.photo, photo));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(photo)]);
}
