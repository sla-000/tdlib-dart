// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The list of quick reply shortcut messages has changed
@immutable
class UpdateQuickReplyShortcutMessages extends Update {
  const UpdateQuickReplyShortcutMessages({
    required this.shortcutId,
    required this.messages,
  });

  /// [shortcutId] The identifier of the shortcut
  final int shortcutId;

  /// [messages] The new list of quick reply messages for the shortcut in order
  /// from the first to the last sent
  final List<QuickReplyMessage> messages;

  static const String constructor = 'updateQuickReplyShortcutMessages';

  static UpdateQuickReplyShortcutMessages? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateQuickReplyShortcutMessages(
      shortcutId: json['shortcut_id'] as int,
      messages: List<QuickReplyMessage>.from(
          ((json['messages'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => QuickReplyMessage.fromJson(item))
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'shortcut_id': shortcutId,
        'messages': messages.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpdateQuickReplyShortcutMessages &&
          const DeepCollectionEquality().equals(other.shortcutId, shortcutId) &&
          const DeepCollectionEquality().equals(other.messages, messages));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(shortcutId),
        const DeepCollectionEquality().hash(messages)
      ]);
}
