// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The link is a link to a website
@immutable
class LinkPreviewTypeArticle extends LinkPreviewType {
  const LinkPreviewTypeArticle({
    this.photo,
  });

  /// [photo] Article's main photo; may be null
  final Photo? photo;

  static const String constructor = 'linkPreviewTypeArticle';

  static LinkPreviewTypeArticle? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return LinkPreviewTypeArticle(
      photo: Photo.fromJson(json['photo'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'photo': photo?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is LinkPreviewTypeArticle &&
          const DeepCollectionEquality().equals(other.photo, photo));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(photo)]);
}
