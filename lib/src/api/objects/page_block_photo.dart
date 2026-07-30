import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
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
      url: json['url'] as String,
      hasSpoiler: json['has_spoiler'] as bool,
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
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
