// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Represents information about a venue
@immutable
class InputInlineQueryResultVenue extends InputInlineQueryResult {
  const InputInlineQueryResultVenue({
    required this.id,
    required this.venue,
    required this.thumbnailUrl,
    required this.thumbnailWidth,
    required this.thumbnailHeight,
    this.replyMarkup,
    required this.inputMessageContent,
  });

  /// [id] Unique identifier of the query result
  final String id;

  /// [venue] Venue result
  final Venue venue;

  /// [thumbnailUrl] URL of the result thumbnail, if it exists
  final String thumbnailUrl;

  /// [thumbnailWidth] Thumbnail width, if known
  final int thumbnailWidth;

  /// [thumbnailHeight] Thumbnail height, if known
  final int thumbnailHeight;

  /// [replyMarkup] The message reply markup; pass null if none. Must be of type
  /// replyMarkupInlineKeyboard or null
  final ReplyMarkup? replyMarkup;

  /// [inputMessageContent] The content of the message to be sent. Must be one
  /// of the following types: inputMessageText, inputMessageRichMessage,
  /// inputMessageInvoice, inputMessageLiveLocation, inputMessageLocation,
  /// inputMessageVenue or inputMessageContact
  final InputMessageContent inputMessageContent;

  static const String constructor = 'inputInlineQueryResultVenue';

  static InputInlineQueryResultVenue? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputInlineQueryResultVenue(
      id: json['id'] as String,
      venue: Venue.fromJson(json['venue'] as Map<String, dynamic>?)!,
      thumbnailUrl: json['thumbnail_url'] as String,
      thumbnailWidth: json['thumbnail_width'] as int,
      thumbnailHeight: json['thumbnail_height'] as int,
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
        'venue': venue.toJson(),
        'thumbnail_url': thumbnailUrl,
        'thumbnail_width': thumbnailWidth,
        'thumbnail_height': thumbnailHeight,
        'reply_markup': replyMarkup?.toJson(),
        'input_message_content': inputMessageContent.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is InputInlineQueryResultVenue &&
          const DeepCollectionEquality().equals(other.id, id) &&
          const DeepCollectionEquality().equals(other.venue, venue) &&
          const DeepCollectionEquality()
              .equals(other.thumbnailUrl, thumbnailUrl) &&
          const DeepCollectionEquality()
              .equals(other.thumbnailWidth, thumbnailWidth) &&
          const DeepCollectionEquality()
              .equals(other.thumbnailHeight, thumbnailHeight) &&
          const DeepCollectionEquality()
              .equals(other.replyMarkup, replyMarkup) &&
          const DeepCollectionEquality()
              .equals(other.inputMessageContent, inputMessageContent));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(venue),
        const DeepCollectionEquality().hash(thumbnailUrl),
        const DeepCollectionEquality().hash(thumbnailWidth),
        const DeepCollectionEquality().hash(thumbnailHeight),
        const DeepCollectionEquality().hash(replyMarkup),
        const DeepCollectionEquality().hash(inputMessageContent)
      ]);
}
