import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
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
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
