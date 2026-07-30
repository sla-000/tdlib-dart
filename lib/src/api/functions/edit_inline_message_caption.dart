// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Edits the caption of an inline message sent via a bot; for bots only
/// Returns [Ok]
@immutable
class EditInlineMessageCaption extends TdFunction {
  const EditInlineMessageCaption({
    required this.inlineMessageId,
    this.replyMarkup,
    this.caption,
    required this.showCaptionAboveMedia,
  });

  /// [inlineMessageId] Inline message identifier
  final String inlineMessageId;

  /// [replyMarkup] The new message reply markup; pass null if none
  final ReplyMarkup? replyMarkup;

  /// [caption] New message content caption; pass null to remove caption;
  /// 0-getOption("message_caption_length_max") characters
  final FormattedText? caption;

  /// [showCaptionAboveMedia] Pass true to show the caption above the media;
  /// otherwise, the caption will be shown below the media. May be true only for
  /// animation, photo, and video messages
  final bool showCaptionAboveMedia;

  static const String constructor = 'editInlineMessageCaption';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'inline_message_id': inlineMessageId,
        'reply_markup': replyMarkup?.toJson(),
        'caption': caption?.toJson(),
        'show_caption_above_media': showCaptionAboveMedia,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is EditInlineMessageCaption &&
          const DeepCollectionEquality()
              .equals(other.inlineMessageId, inlineMessageId) &&
          const DeepCollectionEquality()
              .equals(other.replyMarkup, replyMarkup) &&
          const DeepCollectionEquality().equals(other.caption, caption) &&
          const DeepCollectionEquality()
              .equals(other.showCaptionAboveMedia, showCaptionAboveMedia));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(inlineMessageId),
        const DeepCollectionEquality().hash(replyMarkup),
        const DeepCollectionEquality().hash(caption),
        const DeepCollectionEquality().hash(showCaptionAboveMedia)
      ]);
}
