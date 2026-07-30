import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A list of data blocks
@immutable
class InputPageBlockList extends InputPageBlock {
  const InputPageBlockList({
    required this.items,
  });

  /// [items] The items of the list
  final List<InputPageBlockListItem> items;

  static const String constructor = 'inputPageBlockList';

  static InputPageBlockList? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPageBlockList(
      items: List<InputPageBlockListItem>.from(
          ((json['items'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => InputPageBlockListItem.fromJson(item))
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'items': items.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
