// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes type of block list
@immutable
abstract class BlockList extends TdObject {
  const BlockList();

  static const String constructor = 'blockList';

  /// Inherited by:
  /// [BlockListMain]
  /// [BlockListStories]
  static BlockList? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case BlockListMain.constructor:
        return BlockListMain.fromJson(json);
      case BlockListStories.constructor:
        return BlockListStories.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is BlockList);

  @override
  int get hashCode => runtimeType.hashCode;
}
