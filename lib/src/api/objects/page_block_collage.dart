// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A collage
@immutable
class PageBlockCollage extends PageBlock {
  const PageBlockCollage({
    required this.pageBlocks,
    required this.caption,
  });

  /// [pageBlocks] Collage item contents
  final List<PageBlock> pageBlocks;

  /// [caption] Block caption
  final PageBlockCaption caption;

  static const String constructor = 'pageBlockCollage';

  static PageBlockCollage? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockCollage(
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
        'page_blocks': pageBlocks.map((item) => item.toJson()).toList(),
        'caption': caption.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is PageBlockCollage &&
          const DeepCollectionEquality().equals(other.pageBlocks, pageBlocks) &&
          const DeepCollectionEquality().equals(other.caption, caption));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(pageBlocks),
        const DeepCollectionEquality().hash(caption)
      ]);
}
