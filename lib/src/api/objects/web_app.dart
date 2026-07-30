// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes a Web App. Use getInternalLink with internalLinkTypeWebApp to
/// share the Web App
@immutable
class WebApp extends TdObject {
  const WebApp({
    required this.shortName,
    required this.title,
    required this.description,
    required this.photo,
    this.animation,
  });

  /// [shortName] Web App short name
  final String shortName;

  /// [title] Web App title
  final String title;

  /// param_[description] Web App description
  final String description;

  /// [photo] Web App photo
  final Photo photo;

  /// [animation] Web App animation; may be null
  final Animation? animation;

  static const String constructor = 'webApp';

  static WebApp? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return WebApp(
      shortName: json['short_name'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      photo: Photo.fromJson(json['photo'] as Map<String, dynamic>?)!,
      animation: Animation.fromJson(json['animation'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'short_name': shortName,
        'title': title,
        'description': description,
        'photo': photo.toJson(),
        'animation': animation?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is WebApp &&
          const DeepCollectionEquality().equals(other.shortName, shortName) &&
          const DeepCollectionEquality().equals(other.title, title) &&
          const DeepCollectionEquality()
              .equals(other.description, description) &&
          const DeepCollectionEquality().equals(other.photo, photo) &&
          const DeepCollectionEquality().equals(other.animation, animation));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(shortName),
        const DeepCollectionEquality().hash(title),
        const DeepCollectionEquality().hash(description),
        const DeepCollectionEquality().hash(photo),
        const DeepCollectionEquality().hash(animation)
      ]);
}
