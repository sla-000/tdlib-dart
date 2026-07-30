// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Changes the business greeting message settings of the current user.
/// Requires Telegram Business subscription
/// Returns [Ok]
@immutable
class SetBusinessGreetingMessageSettings extends TdFunction {
  const SetBusinessGreetingMessageSettings({
    this.greetingMessageSettings,
  });

  /// [greetingMessageSettings] The new settings for the greeting message of the
  /// business; pass null to disable the greeting message
  final BusinessGreetingMessageSettings? greetingMessageSettings;

  static const String constructor = 'setBusinessGreetingMessageSettings';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'greeting_message_settings': greetingMessageSettings?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SetBusinessGreetingMessageSettings &&
          const DeepCollectionEquality()
              .equals(other.greetingMessageSettings, greetingMessageSettings));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(greetingMessageSettings)
      ]);
}
