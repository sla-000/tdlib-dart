// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The link is a link to a video chat
@immutable
class LinkPreviewTypeVideoChat extends LinkPreviewType {
  const LinkPreviewTypeVideoChat({
    this.photo,
    required this.isLiveStream,
    required this.joinsAsSpeaker,
  });

  /// [photo] Photo of the chat with the video chat; may be null if none
  final ChatPhoto? photo;

  /// [isLiveStream] True, if the video chat is expected to be a live stream in
  /// a channel or a broadcast group
  final bool isLiveStream;

  /// [joinsAsSpeaker] True, if the user can use the link to join the video chat
  /// without being muted by administrators
  final bool joinsAsSpeaker;

  static const String constructor = 'linkPreviewTypeVideoChat';

  static LinkPreviewTypeVideoChat? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return LinkPreviewTypeVideoChat(
      photo: ChatPhoto.fromJson(json['photo'] as Map<String, dynamic>?),
      isLiveStream: json['is_live_stream'] as bool,
      joinsAsSpeaker: json['joins_as_speaker'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'photo': photo?.toJson(),
        'is_live_stream': isLiveStream,
        'joins_as_speaker': joinsAsSpeaker,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is LinkPreviewTypeVideoChat &&
          const DeepCollectionEquality().equals(other.photo, photo) &&
          const DeepCollectionEquality()
              .equals(other.isLiveStream, isLiveStream) &&
          const DeepCollectionEquality()
              .equals(other.joinsAsSpeaker, joinsAsSpeaker));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(photo),
        const DeepCollectionEquality().hash(isLiveStream),
        const DeepCollectionEquality().hash(joinsAsSpeaker)
      ]);
}
