// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The link is a link to an audio player
@immutable
class LinkPreviewTypeEmbeddedAudioPlayer extends LinkPreviewType {
  const LinkPreviewTypeEmbeddedAudioPlayer({
    required this.url,
    this.audio,
    this.thumbnail,
    required this.duration,
    required this.width,
    required this.height,
  });

  /// [url] URL of the external audio player
  final String url;

  /// [audio] The cached audio; may be null if unknown
  final Audio? audio;

  /// [thumbnail] Thumbnail of the audio; may be null if unknown
  final Photo? thumbnail;

  /// [duration] Duration of the audio, in seconds
  final int duration;

  /// [width] Expected width of the embedded player
  final int width;

  /// [height] Expected height of the embedded player
  final int height;

  static const String constructor = 'linkPreviewTypeEmbeddedAudioPlayer';

  static LinkPreviewTypeEmbeddedAudioPlayer? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return LinkPreviewTypeEmbeddedAudioPlayer(
      url: json['url'] as String,
      audio: Audio.fromJson(json['audio'] as Map<String, dynamic>?),
      thumbnail: Photo.fromJson(json['thumbnail'] as Map<String, dynamic>?),
      duration: json['duration'] as int,
      width: json['width'] as int,
      height: json['height'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'url': url,
        'audio': audio?.toJson(),
        'thumbnail': thumbnail?.toJson(),
        'duration': duration,
        'width': width,
        'height': height,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is LinkPreviewTypeEmbeddedAudioPlayer &&
          const DeepCollectionEquality().equals(other.url, url) &&
          const DeepCollectionEquality().equals(other.audio, audio) &&
          const DeepCollectionEquality().equals(other.thumbnail, thumbnail) &&
          const DeepCollectionEquality().equals(other.duration, duration) &&
          const DeepCollectionEquality().equals(other.width, width) &&
          const DeepCollectionEquality().equals(other.height, height));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(url),
        const DeepCollectionEquality().hash(audio),
        const DeepCollectionEquality().hash(thumbnail),
        const DeepCollectionEquality().hash(duration),
        const DeepCollectionEquality().hash(width),
        const DeepCollectionEquality().hash(height)
      ]);
}
