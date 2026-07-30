// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Represents a video
@immutable
class InlineQueryResultVideo extends InlineQueryResult {
  const InlineQueryResultVideo({
    required this.id,
    required this.video,
    required this.title,
    required this.description,
  });

  /// [id] Unique identifier of the query result
  final String id;

  /// [video] Video
  final Video video;

  /// [title] Title of the video
  final String title;

  /// param_[description] Description of the video
  final String description;

  static const String constructor = 'inlineQueryResultVideo';

  static InlineQueryResultVideo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InlineQueryResultVideo(
      id: json['id'] as String,
      video: Video.fromJson(json['video'] as Map<String, dynamic>?)!,
      title: json['title'] as String,
      description: json['description'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'video': video.toJson(),
        'title': title,
        'description': description,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is InlineQueryResultVideo &&
          const DeepCollectionEquality().equals(other.id, id) &&
          const DeepCollectionEquality().equals(other.video, video) &&
          const DeepCollectionEquality().equals(other.title, title) &&
          const DeepCollectionEquality()
              .equals(other.description, description));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(video),
        const DeepCollectionEquality().hash(title),
        const DeepCollectionEquality().hash(description)
      ]);
}
