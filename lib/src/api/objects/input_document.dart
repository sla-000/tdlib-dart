// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A document (general file) to be sent
@immutable
class InputDocument extends TdObject {
  const InputDocument({
    required this.document,
    this.thumbnail,
    required this.disableContentTypeDetection,
  });

  /// [document] File to be sent
  final InputFile document;

  /// [thumbnail] Document thumbnail; pass null to skip thumbnail uploading
  final InputThumbnail? thumbnail;

  /// [disableContentTypeDetection] Pass true to disable automatic file type
  /// detection and send the document as a file. Always true for files sent to
  /// secret chats
  final bool disableContentTypeDetection;

  static const String constructor = 'inputDocument';

  static InputDocument? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputDocument(
      document: InputFile.fromJson(json['document'] as Map<String, dynamic>?)!,
      thumbnail:
          InputThumbnail.fromJson(json['thumbnail'] as Map<String, dynamic>?),
      disableContentTypeDetection:
          json['disable_content_type_detection'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'document': document.toJson(),
        'thumbnail': thumbnail?.toJson(),
        'disable_content_type_detection': disableContentTypeDetection,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is InputDocument &&
          const DeepCollectionEquality().equals(other.document, document) &&
          const DeepCollectionEquality().equals(other.thumbnail, thumbnail) &&
          const DeepCollectionEquality().equals(
              other.disableContentTypeDetection, disableContentTypeDetection));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(document),
        const DeepCollectionEquality().hash(thumbnail),
        const DeepCollectionEquality().hash(disableContentTypeDetection)
      ]);
}
