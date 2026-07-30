// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains information about a related article
@immutable
class PageBlockRelatedArticle extends TdObject {
  const PageBlockRelatedArticle({
    required this.url,
    required this.title,
    required this.description,
    this.photo,
    required this.author,
    required this.publishDate,
  });

  /// [url] Related article URL
  final String url;

  /// [title] Article title; may be empty
  final String title;

  /// param_[description] Article description; may be empty
  final String description;

  /// [photo] Article photo; may be null
  final Photo? photo;

  /// [author] Article author; may be empty
  final String author;

  /// [publishDate] Point in time (Unix timestamp) when the article was
  /// published; 0 if unknown
  final int publishDate;

  static const String constructor = 'pageBlockRelatedArticle';

  static PageBlockRelatedArticle? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockRelatedArticle(
      url: (json['url'] as String?) ?? '',
      title: (json['title'] as String?) ?? '',
      description: (json['description'] as String?) ?? '',
      photo: Photo.fromJson(json['photo'] as Map<String, dynamic>?),
      author: (json['author'] as String?) ?? '',
      publishDate: (json['publish_date'] as int?) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'url': url,
        'title': title,
        'description': description,
        'photo': photo?.toJson(),
        'author': author,
        'publish_date': publishDate,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is PageBlockRelatedArticle &&
          const DeepCollectionEquality().equals(other.url, url) &&
          const DeepCollectionEquality().equals(other.title, title) &&
          const DeepCollectionEquality()
              .equals(other.description, description) &&
          const DeepCollectionEquality().equals(other.photo, photo) &&
          const DeepCollectionEquality().equals(other.author, author) &&
          const DeepCollectionEquality()
              .equals(other.publishDate, publishDate));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(url),
        const DeepCollectionEquality().hash(title),
        const DeepCollectionEquality().hash(description),
        const DeepCollectionEquality().hash(photo),
        const DeepCollectionEquality().hash(author),
        const DeepCollectionEquality().hash(publishDate)
      ]);
}
