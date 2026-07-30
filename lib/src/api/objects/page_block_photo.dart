// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A photo
@immutable
class PageBlockPhoto extends PageBlock {
  const PageBlockPhoto({
    this.photo,
    this.caption,
    required this.url,
    required this.hasSpoiler,
  });

  /// [photo] Photo file; may be null
  final Photo? photo;

  /// [caption] Photo caption; may be null if none
  final PageBlockCaption? caption;

  /// [url] URL that needs to be opened when the photo is clicked; instant view
  /// only
  final String url;

  /// [hasSpoiler] True, if the photo preview must be covered by a spoiler
  /// animation
  final bool hasSpoiler;

  static const String constructor = 'pageBlockPhoto';

  static PageBlockPhoto? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockPhoto(
      photo: Photo.fromJson(json['photo'] as Map<String, dynamic>?),
      caption:
          PageBlockCaption.fromJson(json['caption'] as Map<String, dynamic>?),
      url: (json['url'] as String?) ?? '',
      hasSpoiler: (json['has_spoiler'] as bool?) ?? false,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'photo': photo?.toJson(),
        'caption': caption?.toJson(),
        'url': url,
        'has_spoiler': hasSpoiler,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is PageBlockPhoto &&
          const DeepCollectionEquality().equals(other.photo, photo) &&
          const DeepCollectionEquality().equals(other.caption, caption) &&
          const DeepCollectionEquality().equals(other.url, url) &&
          const DeepCollectionEquality().equals(other.hasSpoiler, hasSpoiler));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(photo),
        const DeepCollectionEquality().hash(caption),
        const DeepCollectionEquality().hash(url),
        const DeepCollectionEquality().hash(hasSpoiler)
      ]);
}
