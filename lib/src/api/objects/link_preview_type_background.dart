// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The link is a link to a background. Link preview title and description are
/// available only for filled backgrounds
@immutable
class LinkPreviewTypeBackground extends LinkPreviewType {
  const LinkPreviewTypeBackground({
    this.document,
    this.backgroundType,
  });

  /// [document] Document with the background; may be null for filled
  /// backgrounds
  final Document? document;

  /// [backgroundType] Type of the background; may be null if unknown
  final BackgroundType? backgroundType;

  static const String constructor = 'linkPreviewTypeBackground';

  static LinkPreviewTypeBackground? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return LinkPreviewTypeBackground(
      document: Document.fromJson(json['document'] as Map<String, dynamic>?),
      backgroundType: BackgroundType.fromJson(
          json['background_type'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'document': document?.toJson(),
        'background_type': backgroundType?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is LinkPreviewTypeBackground &&
          const DeepCollectionEquality().equals(other.document, document) &&
          const DeepCollectionEquality()
              .equals(other.backgroundType, backgroundType));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(document),
        const DeepCollectionEquality().hash(backgroundType)
      ]);
}
