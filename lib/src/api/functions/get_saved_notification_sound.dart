// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns saved notification sound by its identifier. Returns a 404 error if
/// there is no saved notification sound with the specified identifier
/// Returns [NotificationSound]
@immutable
class GetSavedNotificationSound extends TdFunction {
  const GetSavedNotificationSound({
    required this.notificationSoundId,
  });

  /// [notificationSoundId] Identifier of the notification sound
  final int notificationSoundId;

  static const String constructor = 'getSavedNotificationSound';

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
          other is GetSavedNotificationSound &&
          const DeepCollectionEquality()
              .equals(other.notificationSoundId, notificationSoundId));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(notificationSoundId)]);
}
