// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Represents a link to a file
@immutable
class InputInlineQueryResultDocument extends InputInlineQueryResult {
  const InputInlineQueryResultDocument({
    required this.id,
    required this.title,
    required this.description,
    required this.documentUrl,
    required this.mimeType,
    required this.thumbnailUrl,
    required this.thumbnailWidth,
    required this.thumbnailHeight,
    this.replyMarkup,
    required this.inputMessageContent,
  });

  /// [id] Unique identifier of the query result
  final String id;

  /// [title] Title of the resulting file
  final String title;

  /// param_[description] Short description of the result, if known
  final String description;

  /// [documentUrl] URL of the file
  final String documentUrl;

  /// [mimeType] MIME type of the file content; only "application/pdf" and
  /// "application/zip" are currently allowed
  final String mimeType;

  /// [thumbnailUrl] The URL of the file thumbnail, if it exists
  final String thumbnailUrl;

  /// [thumbnailWidth] Width of the thumbnail
  final int thumbnailWidth;

  /// [thumbnailHeight] Height of the thumbnail
  final int thumbnailHeight;

  /// [replyMarkup] The message reply markup; pass null if none. Must be of type
  /// replyMarkupInlineKeyboard or null
  final ReplyMarkup? replyMarkup;

  /// [inputMessageContent] The content of the message to be sent. Must be one
  /// of the following types: inputMessageText, inputMessageRichMessage,
  /// inputMessageDocument, inputMessageInvoice, inputMessageLiveLocation,
  /// inputMessageLocation, inputMessageVenue or inputMessageContact
  final InputMessageContent inputMessageContent;

  static const String constructor = 'inputInlineQueryResultDocument';

  static InputInlineQueryResultDocument? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputInlineQueryResultDocument(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      documentUrl: json['document_url'] as String,
      mimeType: json['mime_type'] as String,
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
        'title': title,
        'description': description,
        'document_url': documentUrl,
        'mime_type': mimeType,
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
          other is InputInlineQueryResultDocument &&
          const DeepCollectionEquality().equals(other.id, id) &&
          const DeepCollectionEquality().equals(other.title, title) &&
          const DeepCollectionEquality()
              .equals(other.description, description) &&
          const DeepCollectionEquality()
              .equals(other.documentUrl, documentUrl) &&
          const DeepCollectionEquality().equals(other.mimeType, mimeType) &&
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
        const DeepCollectionEquality().hash(title),
        const DeepCollectionEquality().hash(description),
        const DeepCollectionEquality().hash(documentUrl),
        const DeepCollectionEquality().hash(mimeType),
        const DeepCollectionEquality().hash(thumbnailUrl),
        const DeepCollectionEquality().hash(thumbnailWidth),
        const DeepCollectionEquality().hash(thumbnailHeight),
        const DeepCollectionEquality().hash(replyMarkup),
        const DeepCollectionEquality().hash(inputMessageContent)
      ]);
}
