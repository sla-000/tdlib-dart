// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A privacy setting for managing whether the user can receive voice and
/// video messages in private chats; for Telegram Premium users only
@immutable
class UserPrivacySettingAllowPrivateVoiceAndVideoNoteMessages
    extends UserPrivacySetting {
  const UserPrivacySettingAllowPrivateVoiceAndVideoNoteMessages();

  static const String constructor =
      'userPrivacySettingAllowPrivateVoiceAndVideoNoteMessages';

  static UserPrivacySettingAllowPrivateVoiceAndVideoNoteMessages? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const UserPrivacySettingAllowPrivateVoiceAndVideoNoteMessages();
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
          other is UserPrivacySettingAllowPrivateVoiceAndVideoNoteMessages);

  @override
  int get hashCode => runtimeType.hashCode;
}
