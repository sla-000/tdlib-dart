import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes an item of a list page block to be sent
@immutable
class InputPageBlockListItem extends TdObject {
  const InputPageBlockListItem({
    required this.blocks,
    required this.hasCheckbox,
    required this.isChecked,
    required this.value,
    required this.type,
  });

  /// [blocks] Item blocks
  final List<InputPageBlock> blocks;

  /// [hasCheckbox] True, if the item has a checkbox
  final bool hasCheckbox;

  /// [isChecked] True, if the item is checked
  final bool isChecked;

  /// [value] Value of the item; pass 0 for unordered lists
  final int value;

  /// [type] Type of the item numbering type; must be one of "a" for a lowercase
  /// letter, "A" for an uppercase letter, "i" for lowercase Roman numerals, "I"
  /// for uppercase Roman numerals, "1" for decimal numbers, or empty for
  /// unordered lists
  final String type;

  static const String constructor = 'inputPageBlockListItem';

  static InputPageBlockListItem? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPageBlockListItem(
      blocks: List<InputPageBlock>.from(
          ((json['blocks'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => InputPageBlock.fromJson(item))
              .toList()),
      hasCheckbox: json['has_checkbox'] as bool,
      isChecked: json['is_checked'] as bool,
      value: json['value'] as int,
      type: json['type'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'blocks': blocks.map((item) => item.toJson()).toList(),
        'has_checkbox': hasCheckbox,
        'is_checked': isChecked,
        'value': value,
        'type': type,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
