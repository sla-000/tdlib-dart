// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns the list of chats with non-default notification settings for new
/// messages
/// Returns [Chats]
@immutable
class GetChatNotificationSettingsExceptions extends TdFunction {
  const GetChatNotificationSettingsExceptions({
    this.scope,
    required this.compareSound,
  });

  /// [scope] If specified, only chats from the scope will be returned; pass
  /// null to return chats from all scopes
  final NotificationSettingsScope? scope;

  /// [compareSound] Pass true to include in the response chats with only
  /// non-default sound
  final bool compareSound;

  static const String constructor = 'getChatNotificationSettingsExceptions';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'scope': scope?.toJson(),
        'compare_sound': compareSound,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetChatNotificationSettingsExceptions &&
          const DeepCollectionEquality().equals(other.scope, scope) &&
          const DeepCollectionEquality()
              .equals(other.compareSound, compareSound));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(scope),
        const DeepCollectionEquality().hash(compareSound)
      ]);
}
