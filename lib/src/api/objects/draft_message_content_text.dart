// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A text message draft
@immutable
class DraftMessageContentText extends DraftMessageContent {
  const DraftMessageContentText({
    required this.text,
    this.linkPreviewOptions,
  });

  /// [text] Formatted text to be saved as a draft;
  /// 0-getOption("message_text_length_max") characters
  final FormattedText text;

  /// [linkPreviewOptions] Options to be used for generation of a link preview;
  /// may be null if none; pass null to use default link preview options
  final LinkPreviewOptions? linkPreviewOptions;

  static const String constructor = 'draftMessageContentText';

  static DraftMessageContentText? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return DraftMessageContentText(
      text: FormattedText.fromJson(json['text'] as Map<String, dynamic>?)!,
      linkPreviewOptions: LinkPreviewOptions.fromJson(
          json['link_preview_options'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'text': text.toJson(),
        'link_preview_options': linkPreviewOptions?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is DraftMessageContentText &&
          const DeepCollectionEquality().equals(other.text, text) &&
          const DeepCollectionEquality()
              .equals(other.linkPreviewOptions, linkPreviewOptions));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(text),
        const DeepCollectionEquality().hash(linkPreviewOptions)
      ]);
}
