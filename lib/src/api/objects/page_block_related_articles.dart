// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Related articles; instant view only
@immutable
class PageBlockRelatedArticles extends PageBlock {
  const PageBlockRelatedArticles({
    required this.header,
    required this.articles,
  });

  /// [header] Block header
  final RichText header;

  /// [articles] List of related articles
  final List<PageBlockRelatedArticle> articles;

  static const String constructor = 'pageBlockRelatedArticles';

  static PageBlockRelatedArticles? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockRelatedArticles(
      header: RichText.fromJson(json['header'] as Map<String, dynamic>?)!,
      articles: List<PageBlockRelatedArticle>.from(((json['articles']
                  as List<dynamic>?) ??
              <dynamic>[])
          .map((item) =>
              PageBlockRelatedArticle.fromJson(item as Map<String, dynamic>?))
          .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'header': header.toJson(),
        'articles': articles.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is PageBlockRelatedArticles &&
          const DeepCollectionEquality().equals(other.header, header) &&
          const DeepCollectionEquality().equals(other.articles, articles));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(header),
        const DeepCollectionEquality().hash(articles)
      ]);
}
