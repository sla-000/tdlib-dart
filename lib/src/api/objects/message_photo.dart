// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A photo message
@immutable
class MessagePhoto extends MessageContent {
  const MessagePhoto({
    required this.photo,
    this.video,
    required this.caption,
    required this.showCaptionAboveMedia,
    required this.hasSpoiler,
    required this.isSecret,
  });

  /// [photo] The photo
  final Photo photo;

  /// [video] The video representing the live photo; may be null if the photo is
  /// static
  final Video? video;

  /// [caption] Photo caption
  final FormattedText caption;

  /// [showCaptionAboveMedia] True, if the caption must be shown above the
  /// photo; otherwise, the caption must be shown below the photo
  final bool showCaptionAboveMedia;

  /// [hasSpoiler] True, if the photo preview must be covered by a spoiler
  /// animation
  final bool hasSpoiler;

  /// [isSecret] True, if the photo must be blurred and must be shown only while
  /// tapped
  final bool isSecret;

  static const String constructor = 'messagePhoto';

  static MessagePhoto? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessagePhoto(
      photo: Photo.fromJson(json['photo'] as Map<String, dynamic>?)!,
      video: Video.fromJson(json['video'] as Map<String, dynamic>?),
      caption:
          FormattedText.fromJson(json['caption'] as Map<String, dynamic>?)!,
      showCaptionAboveMedia: json['show_caption_above_media'] as bool,
      hasSpoiler: json['has_spoiler'] as bool,
      isSecret: json['is_secret'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'photo': photo.toJson(),
        'video': video?.toJson(),
        'caption': caption.toJson(),
        'show_caption_above_media': showCaptionAboveMedia,
        'has_spoiler': hasSpoiler,
        'is_secret': isSecret,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is MessagePhoto &&
          const DeepCollectionEquality().equals(other.photo, photo) &&
          const DeepCollectionEquality().equals(other.video, video) &&
          const DeepCollectionEquality().equals(other.caption, caption) &&
          const DeepCollectionEquality()
              .equals(other.showCaptionAboveMedia, showCaptionAboveMedia) &&
          const DeepCollectionEquality().equals(other.hasSpoiler, hasSpoiler) &&
          const DeepCollectionEquality().equals(other.isSecret, isSecret));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(photo),
        const DeepCollectionEquality().hash(video),
        const DeepCollectionEquality().hash(caption),
        const DeepCollectionEquality().hash(showCaptionAboveMedia),
        const DeepCollectionEquality().hash(hasSpoiler),
        const DeepCollectionEquality().hash(isSecret)
      ]);
}
