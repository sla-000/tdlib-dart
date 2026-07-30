// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Changes notification settings for reactions
/// Returns [Ok]
@immutable
class SetReactionNotificationSettings extends TdFunction {
  const SetReactionNotificationSettings({
    required this.notificationSettings,
  });

  /// [notificationSettings] The new notification settings for reactions
  final ReactionNotificationSettings notificationSettings;

  static const String constructor = 'setReactionNotificationSettings';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'notification_settings': notificationSettings.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SetReactionNotificationSettings &&
          const DeepCollectionEquality()
              .equals(other.notificationSettings, notificationSettings));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(notificationSettings)]);
}
