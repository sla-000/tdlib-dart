import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// An embedded post; instant view only
@immutable
class PageBlockEmbeddedPost extends PageBlock {
  const PageBlockEmbeddedPost({
    required this.url,
    required this.author,
    this.authorPhoto,
    required this.date,
    required this.blocks,
    this.caption,
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

  /// [blocks] Post content
  final List<PageBlock> blocks;

  /// [caption] Post caption; may be null if none
  final PageBlockCaption? caption;

  static const String constructor = 'pageBlockEmbeddedPost';

  static PageBlockEmbeddedPost? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockEmbeddedPost(
      url: json['url'] as String,
      author: json['author'] as String,
      authorPhoto:
          Photo.fromJson(json['author_photo'] as Map<String, dynamic>?),
      date: json['date'] as int,
      blocks: List<PageBlock>.from(
          ((json['blocks'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => PageBlock.fromJson(item))
              .toList()),
      caption:
          PageBlockCaption.fromJson(json['caption'] as Map<String, dynamic>?),
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
        'blocks': blocks.map((item) => item.toJson()).toList(),
        'caption': caption?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
