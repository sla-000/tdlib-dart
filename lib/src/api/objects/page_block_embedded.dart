// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// An embedded web page
@immutable
class PageBlockEmbedded extends PageBlock {
  const PageBlockEmbedded({
    required this.url,
    required this.html,
    this.posterPhoto,
    required this.width,
    required this.height,
    required this.caption,
    required this.isFullWidth,
    required this.allowScrolling,
  });

  /// [url] URL of the embedded page, if available
  final String url;

  /// [html] HTML-markup of the embedded page
  final String html;

  /// [posterPhoto] Poster photo, if available; may be null
  final Photo? posterPhoto;

  /// [width] Block width; 0 if unknown
  final int width;

  /// [height] Block height; 0 if unknown
  final int height;

  /// [caption] Block caption
  final PageBlockCaption caption;

  /// [isFullWidth] True, if the block must be full width
  final bool isFullWidth;

  /// [allowScrolling] True, if scrolling needs to be allowed
  final bool allowScrolling;

  static const String constructor = 'pageBlockEmbedded';

  static PageBlockEmbedded? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockEmbedded(
      url: (json['url'] as String?) ?? '',
      html: (json['html'] as String?) ?? '',
      posterPhoto:
          Photo.fromJson(json['poster_photo'] as Map<String, dynamic>?),
      width: (json['width'] as int?) ?? 0,
      height: (json['height'] as int?) ?? 0,
      caption:
          PageBlockCaption.fromJson(json['caption'] as Map<String, dynamic>?)!,
      isFullWidth: (json['is_full_width'] as bool?) ?? false,
      allowScrolling: (json['allow_scrolling'] as bool?) ?? false,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'url': url,
        'html': html,
        'poster_photo': posterPhoto?.toJson(),
        'width': width,
        'height': height,
        'caption': caption.toJson(),
        'is_full_width': isFullWidth,
        'allow_scrolling': allowScrolling,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is PageBlockEmbedded &&
          const DeepCollectionEquality().equals(other.url, url) &&
          const DeepCollectionEquality().equals(other.html, html) &&
          const DeepCollectionEquality()
              .equals(other.posterPhoto, posterPhoto) &&
          const DeepCollectionEquality().equals(other.width, width) &&
          const DeepCollectionEquality().equals(other.height, height) &&
          const DeepCollectionEquality().equals(other.caption, caption) &&
          const DeepCollectionEquality()
              .equals(other.isFullWidth, isFullWidth) &&
          const DeepCollectionEquality()
              .equals(other.allowScrolling, allowScrolling));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(url),
        const DeepCollectionEquality().hash(html),
        const DeepCollectionEquality().hash(posterPhoto),
        const DeepCollectionEquality().hash(width),
        const DeepCollectionEquality().hash(height),
        const DeepCollectionEquality().hash(caption),
        const DeepCollectionEquality().hash(isFullWidth),
        const DeepCollectionEquality().hash(allowScrolling)
      ]);
}
