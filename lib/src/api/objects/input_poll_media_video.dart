// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A video
@immutable
class InputPollMediaVideo extends InputPollMedia {
  const InputPollMediaVideo({
    required this.video,
  });

  /// [video] The video to be sent
  final InputVideo video;

  static const String constructor = 'inputPollMediaVideo';

  static InputPollMediaVideo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPollMediaVideo(
      video: InputVideo.fromJson(json['video'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'video': video.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is InputPollMediaVideo &&
          const DeepCollectionEquality().equals(other.video, video));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(video)]);
}
