// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns the list of saved notification sounds. If a sound isn't in the
/// list, then default sound needs to be used
/// Returns [NotificationSounds]
@immutable
class GetSavedNotificationSounds extends TdFunction {
  const GetSavedNotificationSounds();

  static const String constructor = 'getSavedNotificationSounds';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is GetSavedNotificationSounds);

  @override
  int get hashCode => runtimeType.hashCode;
}
