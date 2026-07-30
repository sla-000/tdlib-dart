// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Deletes specified quick reply messages
/// Returns [Ok]
@immutable
class DeleteQuickReplyShortcutMessages extends TdFunction {
  const DeleteQuickReplyShortcutMessages({
    required this.shortcutId,
    required this.messageIds,
  });

  /// [shortcutId] Unique identifier of the quick reply shortcut to which the
  /// messages belong
  final int shortcutId;

  /// [messageIds] Unique identifiers of the messages
  final List<int> messageIds;

  static const String constructor = 'deleteQuickReplyShortcutMessages';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'shortcut_id': shortcutId,
        'message_ids': messageIds.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is DeleteQuickReplyShortcutMessages &&
          const DeepCollectionEquality().equals(other.shortcutId, shortcutId) &&
          const DeepCollectionEquality().equals(other.messageIds, messageIds));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(shortcutId),
        const DeepCollectionEquality().hash(messageIds)
      ]);
}
