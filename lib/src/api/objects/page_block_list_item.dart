// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes an item of a list page block
@immutable
class PageBlockListItem extends TdObject {
  const PageBlockListItem({
    required this.label,
    required this.blocks,
    required this.hasCheckbox,
    required this.isChecked,
    required this.value,
    required this.type,
  });

  /// [label] Item label
  final String label;

  /// [blocks] Item blocks
  final List<PageBlock> blocks;

  /// [hasCheckbox] True, if the item has a checkbox
  final bool hasCheckbox;

  /// [isChecked] True, if the item is checked
  final bool isChecked;

  /// [value] Value of the item; 0 for unordered lists
  final int value;

  /// [type] Type of the item numbering type; must be one of "a" for a lowercase
  /// letters, "A" for an uppercase letters, "i" for lowercase Roman numerals,
  /// "I" for uppercase Roman numerals, "1" for decimal numbers, or empty for
  /// unordered lists
  final String type;

  static const String constructor = 'pageBlockListItem';

  static PageBlockListItem? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockListItem(
      label: (json['label'] as String?) ?? '',
      blocks: List<PageBlock>.from(
          ((json['blocks'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => PageBlock.fromJson(item as Map<String, dynamic>?))
              .toList()),
      hasCheckbox: (json['has_checkbox'] as bool?) ?? false,
      isChecked: (json['is_checked'] as bool?) ?? false,
      value: (json['value'] as int?) ?? 0,
      type: (json['type'] as String?) ?? '',
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'label': label,
        'blocks': blocks.map((item) => item.toJson()).toList(),
        'has_checkbox': hasCheckbox,
        'is_checked': isChecked,
        'value': value,
        'type': type,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is PageBlockListItem &&
          const DeepCollectionEquality().equals(other.label, label) &&
          const DeepCollectionEquality().equals(other.blocks, blocks) &&
          const DeepCollectionEquality()
              .equals(other.hasCheckbox, hasCheckbox) &&
          const DeepCollectionEquality().equals(other.isChecked, isChecked) &&
          const DeepCollectionEquality().equals(other.value, value) &&
          const DeepCollectionEquality().equals(other.type, type));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(label),
        const DeepCollectionEquality().hash(blocks),
        const DeepCollectionEquality().hash(hasCheckbox),
        const DeepCollectionEquality().hash(isChecked),
        const DeepCollectionEquality().hash(value),
        const DeepCollectionEquality().hash(type)
      ]);
}
