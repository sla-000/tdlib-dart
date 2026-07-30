// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Changes privacy settings for new chat creation; can be used only if
/// getOption("can_set_new_chat_privacy_settings")
/// Returns [Ok]
@immutable
class SetNewChatPrivacySettings extends TdFunction {
  const SetNewChatPrivacySettings({
    required this.settings,
  });

  /// [settings] New settings
  final NewChatPrivacySettings settings;

  static const String constructor = 'setNewChatPrivacySettings';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'settings': settings.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SetNewChatPrivacySettings &&
          const DeepCollectionEquality().equals(other.settings, settings));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(settings)]);
}
