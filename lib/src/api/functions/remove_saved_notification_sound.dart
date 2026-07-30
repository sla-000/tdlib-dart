// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Removes a notification sound from the list of saved notification sounds
/// Returns [Ok]
@immutable
class RemoveSavedNotificationSound extends TdFunction {
  const RemoveSavedNotificationSound({
    required this.notificationSoundId,
  });

  /// [notificationSoundId] Identifier of the notification sound
  final int notificationSoundId;

  static const String constructor = 'removeSavedNotificationSound';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'notification_sound_id': notificationSoundId.toString(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is RemoveSavedNotificationSound &&
          const DeepCollectionEquality()
              .equals(other.notificationSoundId, notificationSoundId));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(notificationSoundId)]);
}
