// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Represents a link to an MP3 audio file
@immutable
class InputInlineQueryResultAudio extends InputInlineQueryResult {
  const InputInlineQueryResultAudio({
    required this.id,
    required this.title,
    required this.performer,
    required this.audioUrl,
    required this.audioDuration,
    this.replyMarkup,
    required this.inputMessageContent,
  });

  /// [id] Unique identifier of the query result
  final String id;

  /// [title] Title of the audio file
  final String title;

  /// [performer] Performer of the audio file
  final String performer;

  /// [audioUrl] The URL of the audio file
  final String audioUrl;

  /// [audioDuration] Audio file duration, in seconds
  final int audioDuration;

  /// [replyMarkup] The message reply markup; pass null if none. Must be of type
  /// replyMarkupInlineKeyboard or null
  final ReplyMarkup? replyMarkup;

  /// [inputMessageContent] The content of the message to be sent. Must be one
  /// of the following types: inputMessageText, inputMessageRichMessage,
  /// inputMessageAudio, inputMessageInvoice, inputMessageLiveLocation,
  /// inputMessageLocation, inputMessageVenue or inputMessageContact
  final InputMessageContent inputMessageContent;

  static const String constructor = 'inputInlineQueryResultAudio';

  static InputInlineQueryResultAudio? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputInlineQueryResultAudio(
      id: (json['id'] as String?) ?? '',
      title: (json['title'] as String?) ?? '',
      performer: (json['performer'] as String?) ?? '',
      audioUrl: (json['audio_url'] as String?) ?? '',
      audioDuration: (json['audio_duration'] as int?) ?? 0,
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
        'performer': performer,
        'audio_url': audioUrl,
        'audio_duration': audioDuration,
        'reply_markup': replyMarkup?.toJson(),
        'input_message_content': inputMessageContent.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is InputInlineQueryResultAudio &&
          const DeepCollectionEquality().equals(other.id, id) &&
          const DeepCollectionEquality().equals(other.title, title) &&
          const DeepCollectionEquality().equals(other.performer, performer) &&
          const DeepCollectionEquality().equals(other.audioUrl, audioUrl) &&
          const DeepCollectionEquality()
              .equals(other.audioDuration, audioDuration) &&
          const DeepCollectionEquality()
              .equals(other.replyMarkup, replyMarkup) &&
          const DeepCollectionEquality()
              .equals(other.inputMessageContent, inputMessageContent));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(title),
        const DeepCollectionEquality().hash(performer),
        const DeepCollectionEquality().hash(audioUrl),
        const DeepCollectionEquality().hash(audioDuration),
        const DeepCollectionEquality().hash(replyMarkup),
        const DeepCollectionEquality().hash(inputMessageContent)
      ]);
}
