// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A collapsible block
@immutable
class InputPageBlockDetails extends InputPageBlock {
  const InputPageBlockDetails({
    required this.header,
    required this.blocks,
    required this.isOpen,
  });

  /// [header] Always visible heading for the block
  final RichText header;

  /// [blocks] Block contents
  final List<InputPageBlock> blocks;

  /// [isOpen] True, if the block is open by default
  final bool isOpen;

  static const String constructor = 'inputPageBlockDetails';

  static InputPageBlockDetails? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPageBlockDetails(
      header: RichText.fromJson(json['header'] as Map<String, dynamic>?)!,
      blocks: List<InputPageBlock>.from(((json['blocks'] as List<dynamic>?) ??
              <dynamic>[])
          .map((item) => InputPageBlock.fromJson(item as Map<String, dynamic>?))
          .toList()),
      isOpen: (json['is_open'] as bool?) ?? false,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'header': header.toJson(),
        'blocks': blocks.map((item) => item.toJson()).toList(),
        'is_open': isOpen,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is InputPageBlockDetails &&
          const DeepCollectionEquality().equals(other.header, header) &&
          const DeepCollectionEquality().equals(other.blocks, blocks) &&
          const DeepCollectionEquality().equals(other.isOpen, isOpen));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(header),
        const DeepCollectionEquality().hash(blocks),
        const DeepCollectionEquality().hash(isOpen)
      ]);
}
