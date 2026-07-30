// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns a link preview by the text of a message. Do not call this function
/// too often. Returns a 404 error if the text has no link preview
/// Returns [LinkPreview]
@immutable
class GetLinkPreview extends TdFunction {
  const GetLinkPreview({
    required this.text,
    this.linkPreviewOptions,
  });

  /// [text] Message text with formatting
  final FormattedText text;

  /// [linkPreviewOptions] Options to be used for generation of the link
  /// preview; pass null to use default link preview options
  final LinkPreviewOptions? linkPreviewOptions;

  static const String constructor = 'getLinkPreview';

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
          other is GetLinkPreview &&
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
