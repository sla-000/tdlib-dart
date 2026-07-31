// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A text message
@immutable
class InputMessageText extends InputMessageContent {
  const InputMessageText({
    required this.text,
    this.linkPreviewOptions,
    required this.clearDraft,
  });

  /// [text] Formatted text to be sent; 0-getOption("message_text_length_max")
  /// characters. Only Bold, Italic, Underline, Strikethrough, Spoiler,
  /// CustomEmoji, BlockQuote, ExpandableBlockQuote, Code, Pre, PreCode,
  /// TextUrl, MentionName, and DateTime entities are allowed to be specified
  /// manually
  final FormattedText text;

  /// [linkPreviewOptions] Options to be used for generation of a link preview;
  /// may be null if none; pass null to use default link preview options
  final LinkPreviewOptions? linkPreviewOptions;

  /// [clearDraft] True, if the chat message draft must be deleted
  final bool clearDraft;

  static const String constructor = 'inputMessageText';

  static InputMessageText? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputMessageText(
      text: FormattedText.fromJson(json['text'] as Map<String, dynamic>?)!,
      linkPreviewOptions: LinkPreviewOptions.fromJson(
          json['link_preview_options'] as Map<String, dynamic>?),
      clearDraft: (json['clear_draft'] as bool?) ?? false,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'text': text.toJson(),
        'link_preview_options': linkPreviewOptions?.toJson(),
        'clear_draft': clearDraft,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is InputMessageText &&
          const DeepCollectionEquality().equals(other.text, text) &&
          const DeepCollectionEquality()
              .equals(other.linkPreviewOptions, linkPreviewOptions) &&
          const DeepCollectionEquality().equals(other.clearDraft, clearDraft));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(text),
        const DeepCollectionEquality().hash(linkPreviewOptions),
        const DeepCollectionEquality().hash(clearDraft)
      ]);
}
