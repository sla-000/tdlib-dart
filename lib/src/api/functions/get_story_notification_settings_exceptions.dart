// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns the list of chats with non-default notification settings for
/// stories
/// Returns [Chats]
@immutable
class GetStoryNotificationSettingsExceptions extends TdFunction {
  const GetStoryNotificationSettingsExceptions();

  static const String constructor = 'getStoryNotificationSettingsExceptions';

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
          other is GetStoryNotificationSettingsExceptions);

  @override
  int get hashCode => runtimeType.hashCode;
}
