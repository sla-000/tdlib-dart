// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A collage
@immutable
class PageBlockCollage extends PageBlock {
  const PageBlockCollage({
    required this.blocks,
    this.caption,
  });

  /// [blocks] Collage item contents
  final List<PageBlock> blocks;

  /// [caption] Block caption; may be null if none
  final PageBlockCaption? caption;

  static const String constructor = 'pageBlockCollage';

  static PageBlockCollage? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockCollage(
      blocks: List<PageBlock>.from(
          ((json['blocks'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => PageBlock.fromJson(item as Map<String, dynamic>?))
              .toList()),
      caption:
          PageBlockCaption.fromJson(json['caption'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'blocks': blocks.map((item) => item.toJson()).toList(),
        'caption': caption?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is PageBlockCollage &&
          const DeepCollectionEquality().equals(other.blocks, blocks) &&
          const DeepCollectionEquality().equals(other.caption, caption));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(blocks),
        const DeepCollectionEquality().hash(caption)
      ]);
}
