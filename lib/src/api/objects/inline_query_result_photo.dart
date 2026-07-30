// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Represents a photo
@immutable
class InlineQueryResultPhoto extends InlineQueryResult {
  const InlineQueryResultPhoto({
    required this.id,
    required this.photo,
    required this.title,
    required this.description,
  });

  /// [id] Unique identifier of the query result
  final String id;

  /// [photo] Photo
  final Photo photo;

  /// [title] Title of the result, if known
  final String title;

  /// param_[description] A short description of the result, if known
  final String description;

  static const String constructor = 'inlineQueryResultPhoto';

  static InlineQueryResultPhoto? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InlineQueryResultPhoto(
      id: json['id'] as String,
      photo: Photo.fromJson(json['photo'] as Map<String, dynamic>?)!,
      title: json['title'] as String,
      description: json['description'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'photo': photo.toJson(),
        'title': title,
        'description': description,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is InlineQueryResultPhoto &&
          const DeepCollectionEquality().equals(other.id, id) &&
          const DeepCollectionEquality().equals(other.photo, photo) &&
          const DeepCollectionEquality().equals(other.title, title) &&
          const DeepCollectionEquality()
              .equals(other.description, description));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(photo),
        const DeepCollectionEquality().hash(title),
        const DeepCollectionEquality().hash(description)
      ]);
}
