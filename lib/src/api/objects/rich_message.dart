// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes a message with rich formatting
@immutable
class RichMessage extends TdObject {
  const RichMessage({
    required this.blocks,
    required this.isRtl,
    required this.isFull,
  });

  /// [blocks] Content of the message
  final List<PageBlock> blocks;

  /// [isRtl] True, if the message must be shown from right to left
  final bool isRtl;

  /// [isFull] True, if the object contains the full message. Otherwise,
  /// getFullRichMessage must be used to get the full message
  final bool isFull;

  static const String constructor = 'richMessage';

  static RichMessage? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return RichMessage(
      blocks: List<PageBlock>.from(
          ((json['blocks'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => PageBlock.fromJson(item))
              .toList()),
      isRtl: json['is_rtl'] as bool,
      isFull: json['is_full'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'blocks': blocks.map((item) => item.toJson()).toList(),
        'is_rtl': isRtl,
        'is_full': isFull,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is RichMessage &&
          const DeepCollectionEquality().equals(other.blocks, blocks) &&
          const DeepCollectionEquality().equals(other.isRtl, isRtl) &&
          const DeepCollectionEquality().equals(other.isFull, isFull));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(blocks),
        const DeepCollectionEquality().hash(isRtl),
        const DeepCollectionEquality().hash(isFull)
      ]);
}
