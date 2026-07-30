// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A video message
@immutable
class InputMessageVideo extends InputMessageContent {
  const InputMessageVideo({
    required this.video,
    this.caption,
    required this.showCaptionAboveMedia,
    this.selfDestructType,
    required this.hasSpoiler,
  });

  /// [video] Video to be sent
  final InputVideo video;

  /// [caption] Video caption; pass null to use an empty caption;
  /// 0-getOption("message_caption_length_max") characters
  final FormattedText? caption;

  /// [showCaptionAboveMedia] True, if the caption must be shown above the
  /// video; otherwise, the caption must be shown below the video; not supported
  /// in secret chats
  final bool showCaptionAboveMedia;

  /// [selfDestructType] Video self-destruct type; pass null if none; private
  /// chats only
  final MessageSelfDestructType? selfDestructType;

  /// [hasSpoiler] True, if the video preview must be covered by a spoiler
  /// animation; not supported in secret chats
  final bool hasSpoiler;

  static const String constructor = 'inputMessageVideo';

  static InputMessageVideo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputMessageVideo(
      video: InputVideo.fromJson(json['video'] as Map<String, dynamic>?)!,
      caption: FormattedText.fromJson(json['caption'] as Map<String, dynamic>?),
      showCaptionAboveMedia: json['show_caption_above_media'] as bool,
      selfDestructType: MessageSelfDestructType.fromJson(
          json['self_destruct_type'] as Map<String, dynamic>?),
      hasSpoiler: json['has_spoiler'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'video': video.toJson(),
        'caption': caption?.toJson(),
        'show_caption_above_media': showCaptionAboveMedia,
        'self_destruct_type': selfDestructType?.toJson(),
        'has_spoiler': hasSpoiler,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is InputMessageVideo &&
          const DeepCollectionEquality().equals(other.video, video) &&
          const DeepCollectionEquality().equals(other.caption, caption) &&
          const DeepCollectionEquality()
              .equals(other.showCaptionAboveMedia, showCaptionAboveMedia) &&
          const DeepCollectionEquality()
              .equals(other.selfDestructType, selfDestructType) &&
          const DeepCollectionEquality().equals(other.hasSpoiler, hasSpoiler));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(video),
        const DeepCollectionEquality().hash(caption),
        const DeepCollectionEquality().hash(showCaptionAboveMedia),
        const DeepCollectionEquality().hash(selfDestructType),
        const DeepCollectionEquality().hash(hasSpoiler)
      ]);
}
