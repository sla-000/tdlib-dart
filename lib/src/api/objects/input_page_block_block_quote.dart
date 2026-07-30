// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A block quote
@immutable
class InputPageBlockBlockQuote extends InputPageBlock {
  const InputPageBlockBlockQuote({
    required this.blocks,
    this.credit,
  });

  /// [blocks] Quote blocks
  final List<InputPageBlock> blocks;

  /// [credit] Quote credit; pass null if none
  final RichText? credit;

  static const String constructor = 'inputPageBlockBlockQuote';

  static InputPageBlockBlockQuote? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPageBlockBlockQuote(
      blocks: List<InputPageBlock>.from(
          ((json['blocks'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => InputPageBlock.fromJson(item))
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
          other is InputPageBlockBlockQuote &&
          const DeepCollectionEquality().equals(other.blocks, blocks) &&
          const DeepCollectionEquality().equals(other.credit, credit));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(blocks),
        const DeepCollectionEquality().hash(credit)
      ]);
}
