// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A block quote
@immutable
class PageBlockBlockQuote extends PageBlock {
  const PageBlockBlockQuote({
    required this.blocks,
    this.credit,
  });

  /// [blocks] Quote blocks
  final List<PageBlock> blocks;

  /// [credit] Quote credit; may be null if none
  final RichText? credit;

  static const String constructor = 'pageBlockBlockQuote';

  static PageBlockBlockQuote? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockBlockQuote(
      blocks: List<PageBlock>.from(
          ((json['blocks'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => PageBlock.fromJson(item as Map<String, dynamic>?))
              .toList()),
      credit: RichText.fromJson(json['credit'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'blocks': blocks.map((item) => item.toJson()).toList(),
        'credit': credit?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is PageBlockBlockQuote &&
          const DeepCollectionEquality().equals(other.blocks, blocks) &&
          const DeepCollectionEquality().equals(other.credit, credit));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(blocks),
        const DeepCollectionEquality().hash(credit)
      ]);
}
