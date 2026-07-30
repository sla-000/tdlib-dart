// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A document message (general file)
@immutable
class InputMessageDocument extends InputMessageContent {
  const InputMessageDocument({
    required this.document,
    this.caption,
  });

  /// [document] Document to be sent
  final InputDocument document;

  /// [caption] Document caption; pass null to use an empty caption;
  /// 0-getOption("message_caption_length_max") characters
  final FormattedText? caption;

  static const String constructor = 'inputMessageDocument';

  static InputMessageDocument? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputMessageDocument(
      document:
          InputDocument.fromJson(json['document'] as Map<String, dynamic>?)!,
      caption: FormattedText.fromJson(json['caption'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'document': document.toJson(),
        'caption': caption?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is InputMessageDocument &&
          const DeepCollectionEquality().equals(other.document, document) &&
          const DeepCollectionEquality().equals(other.caption, caption));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(document),
        const DeepCollectionEquality().hash(caption)
      ]);
}
