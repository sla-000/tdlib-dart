// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Represents a link to a page containing an embedded video player or a video
/// file
@immutable
class InputInlineQueryResultVideo extends InputInlineQueryResult {
  const InputInlineQueryResultVideo({
    required this.id,
    required this.title,
    required this.description,
    required this.thumbnailUrl,
    required this.videoUrl,
    required this.mimeType,
    required this.videoWidth,
    required this.videoHeight,
    required this.videoDuration,
    this.replyMarkup,
    required this.inputMessageContent,
  });

  /// [id] Unique identifier of the query result
  final String id;

  /// [title] Title of the result
  final String title;

  /// param_[description] A short description of the result, if known
  final String description;

  /// [thumbnailUrl] The URL of the video thumbnail (JPEG), if it exists
  final String thumbnailUrl;

  /// [videoUrl] URL of the embedded video player or video file
  final String videoUrl;

  /// [mimeType] MIME type of the content of the video URL, only "text/html" or
  /// "video/mp4" are currently supported
  final String mimeType;

  /// [videoWidth] Width of the video
  final int videoWidth;

  /// [videoHeight] Height of the video
  final int videoHeight;

  /// [videoDuration] Video duration, in seconds
  final int videoDuration;

  /// [replyMarkup] The message reply markup; pass null if none. Must be of type
  /// replyMarkupInlineKeyboard or null
  final ReplyMarkup? replyMarkup;

  /// [inputMessageContent] The content of the message to be sent. Must be one
  /// of the following types: inputMessageText, inputMessageRichMessage,
  /// inputMessageVideo, inputMessageInvoice, inputMessageLiveLocation,
  /// inputMessageLocation, inputMessageVenue or inputMessageContact
  final InputMessageContent inputMessageContent;

  static const String constructor = 'inputInlineQueryResultVideo';

  static InputInlineQueryResultVideo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputInlineQueryResultVideo(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      thumbnailUrl: json['thumbnail_url'] as String,
      videoUrl: json['video_url'] as String,
      mimeType: json['mime_type'] as String,
      videoWidth: json['video_width'] as int,
      videoHeight: json['video_height'] as int,
      videoDuration: json['video_duration'] as int,
      replyMarkup:
          ReplyMarkup.fromJson(json['reply_markup'] as Map<String, dynamic>?),
      inputMessageContent: InputMessageContent.fromJson(
          json['input_message_content'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'title': title,
        'description': description,
        'thumbnail_url': thumbnailUrl,
        'video_url': videoUrl,
        'mime_type': mimeType,
        'video_width': videoWidth,
        'video_height': videoHeight,
        'video_duration': videoDuration,
        'reply_markup': replyMarkup?.toJson(),
        'input_message_content': inputMessageContent.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is InputInlineQueryResultVideo &&
          const DeepCollectionEquality().equals(other.id, id) &&
          const DeepCollectionEquality().equals(other.title, title) &&
          const DeepCollectionEquality()
              .equals(other.description, description) &&
          const DeepCollectionEquality()
              .equals(other.thumbnailUrl, thumbnailUrl) &&
          const DeepCollectionEquality().equals(other.videoUrl, videoUrl) &&
          const DeepCollectionEquality().equals(other.mimeType, mimeType) &&
          const DeepCollectionEquality().equals(other.videoWidth, videoWidth) &&
          const DeepCollectionEquality()
              .equals(other.videoHeight, videoHeight) &&
          const DeepCollectionEquality()
              .equals(other.videoDuration, videoDuration) &&
          const DeepCollectionEquality()
              .equals(other.replyMarkup, replyMarkup) &&
          const DeepCollectionEquality()
              .equals(other.inputMessageContent, inputMessageContent));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(title),
        const DeepCollectionEquality().hash(description),
        const DeepCollectionEquality().hash(thumbnailUrl),
        const DeepCollectionEquality().hash(videoUrl),
        const DeepCollectionEquality().hash(mimeType),
        const DeepCollectionEquality().hash(videoWidth),
        const DeepCollectionEquality().hash(videoHeight),
        const DeepCollectionEquality().hash(videoDuration),
        const DeepCollectionEquality().hash(replyMarkup),
        const DeepCollectionEquality().hash(inputMessageContent)
      ]);
}
