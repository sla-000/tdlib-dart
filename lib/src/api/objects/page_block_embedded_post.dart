// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// An embedded post
@immutable
class PageBlockEmbeddedPost extends PageBlock {
  const PageBlockEmbeddedPost({
    required this.url,
    required this.author,
    this.authorPhoto,
    required this.date,
    required this.pageBlocks,
    required this.caption,
  });

  /// [url] URL of the embedded post
  final String url;

  /// [author] Post author
  final String author;

  /// [authorPhoto] Post author photo; may be null
  final Photo? authorPhoto;

  /// [date] Point in time (Unix timestamp) when the post was created; 0 if
  /// unknown
  final int date;

  /// [pageBlocks] Post content
  final List<PageBlock> pageBlocks;

  /// [caption] Post caption
  final PageBlockCaption caption;

  static const String constructor = 'pageBlockEmbeddedPost';

  static PageBlockEmbeddedPost? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockEmbeddedPost(
      url: (json['url'] as String?) ?? '',
      author: (json['author'] as String?) ?? '',
      authorPhoto:
          Photo.fromJson(json['author_photo'] as Map<String, dynamic>?),
      date: (json['date'] as int?) ?? 0,
      pageBlocks: List<PageBlock>.from(
          ((json['page_blocks'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => PageBlock.fromJson(item as Map<String, dynamic>?))
              .toList()),
      caption:
          PageBlockCaption.fromJson(json['caption'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'url': url,
        'author': author,
        'author_photo': authorPhoto?.toJson(),
        'date': date,
        'page_blocks': pageBlocks.map((item) => item.toJson()).toList(),
        'caption': caption.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is PageBlockEmbeddedPost &&
          const DeepCollectionEquality().equals(other.url, url) &&
          const DeepCollectionEquality().equals(other.author, author) &&
          const DeepCollectionEquality()
              .equals(other.authorPhoto, authorPhoto) &&
          const DeepCollectionEquality().equals(other.date, date) &&
          const DeepCollectionEquality().equals(other.pageBlocks, pageBlocks) &&
          const DeepCollectionEquality().equals(other.caption, caption));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(url),
        const DeepCollectionEquality().hash(author),
        const DeepCollectionEquality().hash(authorPhoto),
        const DeepCollectionEquality().hash(date),
        const DeepCollectionEquality().hash(pageBlocks),
        const DeepCollectionEquality().hash(caption)
      ]);
}
