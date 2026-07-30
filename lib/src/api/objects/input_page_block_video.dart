import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A video
@immutable
class InputPageBlockVideo extends InputPageBlock {
  const InputPageBlockVideo({
    required this.video,
    this.caption,
    required this.hasSpoiler,
  });

  /// [video] The video to be sent
  final InputVideo video;

  /// [caption] Video caption; pass null if none
  final PageBlockCaption? caption;

  /// [hasSpoiler] True, if the video preview must be covered by a spoiler
  /// animation
  final bool hasSpoiler;

  static const String constructor = 'inputPageBlockVideo';

  static InputPageBlockVideo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPageBlockVideo(
      video: InputVideo.fromJson(json['video'] as Map<String, dynamic>?)!,
      caption:
          PageBlockCaption.fromJson(json['caption'] as Map<String, dynamic>?),
      hasSpoiler: json['has_spoiler'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'video': video.toJson(),
        'caption': caption?.toJson(),
        'has_spoiler': hasSpoiler,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
