// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A rich message defined by blocks
@immutable
class RichMessageSourceBlocks extends RichMessageSource {
  const RichMessageSourceBlocks({
    required this.blocks,
  });

  /// [blocks] Content of the message
  final List<InputPageBlock> blocks;

  static const String constructor = 'richMessageSourceBlocks';

  static RichMessageSourceBlocks? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return RichMessageSourceBlocks(
      blocks: List<InputPageBlock>.from(
          ((json['blocks'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => InputPageBlock.fromJson(item))
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'blocks': blocks.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is RichMessageSourceBlocks &&
          const DeepCollectionEquality().equals(other.blocks, blocks));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(blocks)]);
}
