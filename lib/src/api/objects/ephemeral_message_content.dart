// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes an ephemeral content of a regular message, which must be shown
/// instead of the regular content
@immutable
class EphemeralMessageContent extends TdObject {
  const EphemeralMessageContent({
    required this.canBeSaved,
    required this.hasTimestampedMedia,
    required this.content,
    this.replyMarkup,
  });

  /// [canBeSaved] True, if content of the message can be saved locally
  final bool canBeSaved;

  /// [hasTimestampedMedia] True, if media timestamp entities refers to a media
  /// in this message as opposed to a media in the replied message
  final bool hasTimestampedMedia;

  /// [content] Content of the message
  final MessageContent content;

  /// [replyMarkup] Reply markup for the message; may be null if none
  final ReplyMarkup? replyMarkup;

  static const String constructor = 'ephemeralMessageContent';

  static EphemeralMessageContent? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return EphemeralMessageContent(
      canBeSaved: (json['can_be_saved'] as bool?) ?? false,
      hasTimestampedMedia: (json['has_timestamped_media'] as bool?) ?? false,
      content:
          MessageContent.fromJson(json['content'] as Map<String, dynamic>?)!,
      replyMarkup:
          ReplyMarkup.fromJson(json['reply_markup'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'can_be_saved': canBeSaved,
        'has_timestamped_media': hasTimestampedMedia,
        'content': content.toJson(),
        'reply_markup': replyMarkup?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is EphemeralMessageContent &&
          const DeepCollectionEquality().equals(other.canBeSaved, canBeSaved) &&
          const DeepCollectionEquality()
              .equals(other.hasTimestampedMedia, hasTimestampedMedia) &&
          const DeepCollectionEquality().equals(other.content, content) &&
          const DeepCollectionEquality()
              .equals(other.replyMarkup, replyMarkup));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(canBeSaved),
        const DeepCollectionEquality().hash(hasTimestampedMedia),
        const DeepCollectionEquality().hash(content),
        const DeepCollectionEquality().hash(replyMarkup)
      ]);
}
