import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
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
              .map((item) => PageBlock.fromJson(item))
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
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
