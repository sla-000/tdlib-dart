// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Autosave settings applied to all basic group and supergroup chats without
/// chat-specific settings
@immutable
class AutosaveSettingsScopeGroupChats extends AutosaveSettingsScope {
  const AutosaveSettingsScopeGroupChats();

  static const String constructor = 'autosaveSettingsScopeGroupChats';

  static AutosaveSettingsScopeGroupChats? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const AutosaveSettingsScopeGroupChats();
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
          other is AutosaveSettingsScopeGroupChats);

  @override
  int get hashCode => runtimeType.hashCode;
}
