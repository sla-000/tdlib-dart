// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Sets access settings of a managed bot; for bots only
/// Returns [Ok]
@immutable
class SetManagedBotAccessSettings extends TdFunction {
  const SetManagedBotAccessSettings({
    required this.botUserId,
    required this.settings,
  });

  /// [botUserId] Identifier of the managed bot
  final int botUserId;

  /// [settings] New access settings
  final BotAccessSettings settings;

  static const String constructor = 'setManagedBotAccessSettings';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'bot_user_id': botUserId,
        'settings': settings.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SetManagedBotAccessSettings &&
          const DeepCollectionEquality().equals(other.botUserId, botUserId) &&
          const DeepCollectionEquality().equals(other.settings, settings));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(botUserId),
        const DeepCollectionEquality().hash(settings)
      ]);
}
