// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The block list that disallows viewing of stories of the current user
@immutable
class BlockListStories extends BlockList {
  const BlockListStories();

  static const String constructor = 'blockListStories';

  static BlockListStories? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const BlockListStories();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is BlockListStories);

  @override
  int get hashCode => runtimeType.hashCode;
}
