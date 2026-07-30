// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A list of data blocks
@immutable
class PageBlockList extends PageBlock {
  const PageBlockList({
    required this.items,
  });

  /// [items] The items of the list
  final List<PageBlockListItem> items;

  static const String constructor = 'pageBlockList';

  static PageBlockList? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockList(
      items: List<PageBlockListItem>.from(
          ((json['items'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) =>
                  PageBlockListItem.fromJson(item as Map<String, dynamic>?))
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
          other is PageBlockList &&
          const DeepCollectionEquality().equals(other.items, items));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(items)]);
}
