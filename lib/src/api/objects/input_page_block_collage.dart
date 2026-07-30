import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
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
      blocks: List<InputPageBlock>.from(
          ((json['blocks'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => InputPageBlock.fromJson(item))
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
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
