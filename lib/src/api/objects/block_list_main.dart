// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The main block list that disallows writing messages to the current user,
/// receiving their status and photo, viewing of stories, and some other
/// actions
@immutable
class BlockListMain extends BlockList {
  const BlockListMain();

  static const String constructor = 'blockListMain';

  static BlockListMain? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const BlockListMain();
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
      (other.runtimeType == runtimeType && other is BlockListMain);

  @override
  int get hashCode => runtimeType.hashCode;
}
