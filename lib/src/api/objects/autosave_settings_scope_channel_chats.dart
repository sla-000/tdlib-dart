// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Autosave settings applied to all channel chats without chat-specific
/// settings
@immutable
class AutosaveSettingsScopeChannelChats extends AutosaveSettingsScope {
  const AutosaveSettingsScopeChannelChats();

  static const String constructor = 'autosaveSettingsScopeChannelChats';

  static AutosaveSettingsScopeChannelChats? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const AutosaveSettingsScopeChannelChats();
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
      (other.runtimeType == runtimeType &&
          other is AutosaveSettingsScopeChannelChats);

  @override
  int get hashCode => runtimeType.hashCode;
}
