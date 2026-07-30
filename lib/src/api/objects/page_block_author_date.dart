// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The author and publishing date of a page; instant view only
@immutable
class PageBlockAuthorDate extends PageBlock {
  const PageBlockAuthorDate({
    required this.author,
    required this.publishDate,
  });

  /// [author] Author
  final RichText author;

  /// [publishDate] Point in time (Unix timestamp) when the article was
  /// published; 0 if unknown
  final int publishDate;

  static const String constructor = 'pageBlockAuthorDate';

  static PageBlockAuthorDate? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockAuthorDate(
      author: RichText.fromJson(json['author'] as Map<String, dynamic>?)!,
      publishDate: json['publish_date'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'author': author.toJson(),
        'publish_date': publishDate,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is PageBlockAuthorDate &&
          const DeepCollectionEquality().equals(other.author, author) &&
          const DeepCollectionEquality()
              .equals(other.publishDate, publishDate));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(author),
        const DeepCollectionEquality().hash(publishDate)
      ]);
}
