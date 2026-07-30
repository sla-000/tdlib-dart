// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A collage
@immutable
class InputPageBlockCollage extends InputPageBlock {
  const InputPageBlockCollage({
    required this.blocks,
    this.caption,
  });

  /// [blocks] Collage item contents
  final List<InputPageBlock> blocks;

  /// [caption] Block caption; pass null if none
  final PageBlockCaption? caption;

  static const String constructor = 'inputPageBlockCollage';

  static InputPageBlockCollage? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPageBlockCollage(
      blocks: List<InputPageBlock>.from(((json['blocks'] as List<dynamic>?) ??
              <dynamic>[])
          .map((item) => InputPageBlock.fromJson(item as Map<String, dynamic>?))
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
          other is InputPageBlockCollage &&
          const DeepCollectionEquality().equals(other.blocks, blocks) &&
          const DeepCollectionEquality().equals(other.caption, caption));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(blocks),
        const DeepCollectionEquality().hash(caption)
      ]);
}
