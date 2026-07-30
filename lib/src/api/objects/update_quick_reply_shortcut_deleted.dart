// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A quick reply shortcut and all its messages were deleted
@immutable
class UpdateQuickReplyShortcutDeleted extends Update {
  const UpdateQuickReplyShortcutDeleted({
    required this.shortcutId,
  });

  /// [shortcutId] The identifier of the deleted shortcut
  final int shortcutId;

  static const String constructor = 'updateQuickReplyShortcutDeleted';

  static UpdateQuickReplyShortcutDeleted? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateQuickReplyShortcutDeleted(
      shortcutId: json['shortcut_id'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'shortcut_id': shortcutId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpdateQuickReplyShortcutDeleted &&
          const DeepCollectionEquality().equals(other.shortcutId, shortcutId));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(shortcutId)]);
}
