import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// An audio file
@immutable
class InputPageBlockAudio extends InputPageBlock {
  const InputPageBlockAudio({
    required this.audio,
    this.caption,
  });

  /// [audio] The audio to be sent
  final InputAudio audio;

  /// [caption] Audio file caption; pass null if none
  final PageBlockCaption? caption;

  static const String constructor = 'inputPageBlockAudio';

  static InputPageBlockAudio? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPageBlockAudio(
      audio: InputAudio.fromJson(json['audio'] as Map<String, dynamic>?)!,
      caption:
          PageBlockCaption.fromJson(json['caption'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'audio': audio.toJson(),
        'caption': caption?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
