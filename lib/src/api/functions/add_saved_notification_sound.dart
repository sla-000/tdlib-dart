// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Adds a new notification sound to the list of saved notification sounds.
/// The new notification sound is added to the top of the list. If it is
/// already in the list, its position isn't changed
/// Returns [NotificationSound]
@immutable
class AddSavedNotificationSound extends TdFunction {
  const AddSavedNotificationSound({
    required this.sound,
  });

  /// [sound] Notification sound file to add
  final InputFile sound;

  static const String constructor = 'addSavedNotificationSound';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'sound': sound.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is AddSavedNotificationSound &&
          const DeepCollectionEquality().equals(other.sound, sound));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(sound)]);
}
