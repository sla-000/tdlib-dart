// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A small image inside the text
@immutable
class RichTextIcon extends RichText {
  const RichTextIcon({
    required this.document,
    required this.width,
    required this.height,
  });

  /// [document] The image represented as a document. The image can be in GIF,
  /// JPEG or PNG format
  final Document document;

  /// [width] Width of a bounding box in which the image must be shown; 0 if
  /// unknown
  final int width;

  /// [height] Height of a bounding box in which the image must be shown; 0 if
  /// unknown
  final int height;

  static const String constructor = 'richTextIcon';

  static RichTextIcon? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return RichTextIcon(
      document: Document.fromJson(json['document'] as Map<String, dynamic>?)!,
      width: (json['width'] as int?) ?? 0,
      height: (json['height'] as int?) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'document': document.toJson(),
        'width': width,
        'height': height,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is RichTextIcon &&
          const DeepCollectionEquality().equals(other.document, document) &&
          const DeepCollectionEquality().equals(other.width, width) &&
          const DeepCollectionEquality().equals(other.height, height));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(document),
        const DeepCollectionEquality().hash(width),
        const DeepCollectionEquality().hash(height)
      ]);
}
