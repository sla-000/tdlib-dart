// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes autosave settings
@immutable
class AutosaveSettings extends TdObject {
  const AutosaveSettings({
    required this.privateChatSettings,
    required this.groupSettings,
    required this.channelSettings,
    required this.exceptions,
  });

  /// [privateChatSettings] Default autosave settings for private chats
  final ScopeAutosaveSettings privateChatSettings;

  /// [groupSettings] Default autosave settings for basic group and supergroup
  /// chats
  final ScopeAutosaveSettings groupSettings;

  /// [channelSettings] Default autosave settings for channel chats
  final ScopeAutosaveSettings channelSettings;

  /// [exceptions] Autosave settings for specific chats
  final List<AutosaveSettingsException> exceptions;

  static const String constructor = 'autosaveSettings';

  static AutosaveSettings? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AutosaveSettings(
      privateChatSettings: ScopeAutosaveSettings.fromJson(
          json['private_chat_settings'] as Map<String, dynamic>?)!,
      groupSettings: ScopeAutosaveSettings.fromJson(
          json['group_settings'] as Map<String, dynamic>?)!,
      channelSettings: ScopeAutosaveSettings.fromJson(
          json['channel_settings'] as Map<String, dynamic>?)!,
      exceptions: List<AutosaveSettingsException>.from(((json['exceptions']
                  as List<dynamic>?) ??
              <dynamic>[])
          .map((item) =>
              AutosaveSettingsException.fromJson(item as Map<String, dynamic>?))
          .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'private_chat_settings': privateChatSettings.toJson(),
        'group_settings': groupSettings.toJson(),
        'channel_settings': channelSettings.toJson(),
        'exceptions': exceptions.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is AutosaveSettings &&
          const DeepCollectionEquality()
              .equals(other.privateChatSettings, privateChatSettings) &&
          const DeepCollectionEquality()
              .equals(other.groupSettings, groupSettings) &&
          const DeepCollectionEquality()
              .equals(other.channelSettings, channelSettings) &&
          const DeepCollectionEquality().equals(other.exceptions, exceptions));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(privateChatSettings),
        const DeepCollectionEquality().hash(groupSettings),
        const DeepCollectionEquality().hash(channelSettings),
        const DeepCollectionEquality().hash(exceptions)
      ]);
}
