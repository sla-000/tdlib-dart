// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes an item of a list page block
@immutable
class PageBlockListItem extends TdObject {
  const PageBlockListItem({
    required this.label,
    required this.pageBlocks,
  });

  /// [label] Item label
  final String label;

  /// [pageBlocks] Item blocks
  final List<PageBlock> pageBlocks;

  static const String constructor = 'pageBlockListItem';

  static PageBlockListItem? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockListItem(
      label: (json['label'] as String?) ?? '',
      pageBlocks: List<PageBlock>.from(
          ((json['page_blocks'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => PageBlock.fromJson(item as Map<String, dynamic>?))
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'label': label,
        'page_blocks': pageBlocks.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is PageBlockListItem &&
          const DeepCollectionEquality().equals(other.label, label) &&
          const DeepCollectionEquality().equals(other.pageBlocks, pageBlocks));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(label),
        const DeepCollectionEquality().hash(pageBlocks)
      ]);
}
