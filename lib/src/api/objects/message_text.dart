// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A text message
@immutable
class MessageText extends MessageContent {
  const MessageText({
    required this.text,
    this.linkPreview,
    this.linkPreviewOptions,
  });

  /// [text] Text of the message
  final FormattedText text;

  /// [linkPreview] A link preview attached to the message; may be null
  final LinkPreview? linkPreview;

  /// [linkPreviewOptions] Options which were used for generation of the link
  /// preview; may be null if default options were used
  final LinkPreviewOptions? linkPreviewOptions;

  static const String constructor = 'messageText';

  static MessageText? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageText(
      text: FormattedText.fromJson(json['text'] as Map<String, dynamic>?)!,
      linkPreview:
          LinkPreview.fromJson(json['link_preview'] as Map<String, dynamic>?),
      linkPreviewOptions: LinkPreviewOptions.fromJson(
          json['link_preview_options'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'text': text.toJson(),
        'link_preview': linkPreview?.toJson(),
        'link_preview_options': linkPreviewOptions?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is MessageText &&
          const DeepCollectionEquality().equals(other.text, text) &&
          const DeepCollectionEquality()
              .equals(other.linkPreview, linkPreview) &&
          const DeepCollectionEquality()
              .equals(other.linkPreviewOptions, linkPreviewOptions));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(text),
        const DeepCollectionEquality().hash(linkPreview),
        const DeepCollectionEquality().hash(linkPreviewOptions)
      ]);
}
