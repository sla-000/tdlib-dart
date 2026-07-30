// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains autosave settings for a chat, which overrides default settings
/// for the corresponding scope
@immutable
class AutosaveSettingsException extends TdObject {
  const AutosaveSettingsException({
    required this.chatId,
    required this.settings,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [settings] Autosave settings for the chat
  final ScopeAutosaveSettings settings;

  static const String constructor = 'autosaveSettingsException';

  static AutosaveSettingsException? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AutosaveSettingsException(
      chatId: (json['chat_id'] as int?) ?? 0,
      settings: ScopeAutosaveSettings.fromJson(
          json['settings'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'settings': settings.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is AutosaveSettingsException &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality().equals(other.settings, settings));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(settings)
      ]);
}
