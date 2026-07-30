// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The media is a video
@immutable
class LinkPreviewAlbumMediaVideo extends LinkPreviewAlbumMedia {
  const LinkPreviewAlbumMediaVideo({
    required this.video,
  });

  /// [video] Video description
  final Video video;

  static const String constructor = 'linkPreviewAlbumMediaVideo';

  static LinkPreviewAlbumMediaVideo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return LinkPreviewAlbumMediaVideo(
      video: Video.fromJson(json['video'] as Map<String, dynamic>?)!,
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
          other is LinkPreviewAlbumMediaVideo &&
          const DeepCollectionEquality().equals(other.video, video));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(video)]);
}
