// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes a game. Use getInternalLink with internalLinkTypeGame to share
/// the game
@immutable
class Game extends TdObject {
  const Game({
    required this.id,
    required this.shortName,
    required this.title,
    required this.text,
    required this.description,
    required this.photo,
    this.animation,
  });

  /// [id] Unique game identifier
  final int id;

  /// [shortName] Game short name
  final String shortName;

  /// [title] Game title
  final String title;

  /// [text] Game text, usually containing scoreboards for a game
  final FormattedText text;

  /// param_[description] Game description
  final String description;

  /// [photo] Game photo
  final Photo photo;

  /// [animation] Game animation; may be null
  final Animation? animation;

  static const String constructor = 'game';

  static Game? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Game(
      id: (json['id'] is int
              ? json['id'] as int
              : int.tryParse(json['id']?.toString() ?? '')) ??
          0,
      shortName: (json['short_name'] as String?) ?? '',
      title: (json['title'] as String?) ?? '',
      text: FormattedText.fromJson(json['text'] as Map<String, dynamic>?)!,
      description: (json['description'] as String?) ?? '',
      photo: Photo.fromJson(json['photo'] as Map<String, dynamic>?)!,
      animation: Animation.fromJson(json['animation'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id.toString(),
        'short_name': shortName,
        'title': title,
        'text': text.toJson(),
        'description': description,
        'photo': photo.toJson(),
        'animation': animation?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is Game &&
          const DeepCollectionEquality().equals(other.id, id) &&
          const DeepCollectionEquality().equals(other.shortName, shortName) &&
          const DeepCollectionEquality().equals(other.title, title) &&
          const DeepCollectionEquality().equals(other.text, text) &&
          const DeepCollectionEquality()
              .equals(other.description, description) &&
          const DeepCollectionEquality().equals(other.photo, photo) &&
          const DeepCollectionEquality().equals(other.animation, animation));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(shortName),
        const DeepCollectionEquality().hash(title),
        const DeepCollectionEquality().hash(text),
        const DeepCollectionEquality().hash(description),
        const DeepCollectionEquality().hash(photo),
        const DeepCollectionEquality().hash(animation)
      ]);
}
