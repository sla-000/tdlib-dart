// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Autosave settings applied to a chat
@immutable
class AutosaveSettingsScopeChat extends AutosaveSettingsScope {
  const AutosaveSettingsScopeChat({
    required this.chatId,
  });

  /// [chatId] Chat identifier
  final int chatId;

  static const String constructor = 'autosaveSettingsScopeChat';

  static AutosaveSettingsScopeChat? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AutosaveSettingsScopeChat(
      chatId: (json['chat_id'] as int?) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is AutosaveSettingsScopeChat &&
          const DeepCollectionEquality().equals(other.chatId, chatId));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(chatId)]);
}
