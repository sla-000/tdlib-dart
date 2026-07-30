// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
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
      items: List<InputPageBlockListItem>.from(((json['items']
                  as List<dynamic>?) ??
              <dynamic>[])
          .map((item) =>
              InputPageBlockListItem.fromJson(item as Map<String, dynamic>?))
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
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is InputPageBlockList &&
          const DeepCollectionEquality().equals(other.items, items));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(items)]);
}
