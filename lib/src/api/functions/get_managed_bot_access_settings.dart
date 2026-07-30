import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns access settings of a managed bot; for bots only
/// Returns [BotAccessSettings]
@immutable
class GetManagedBotAccessSettings extends TdFunction {
  const GetManagedBotAccessSettings({
    required this.botUserId,
  });

  /// [botUserId] Identifier of the managed bot
  final int botUserId;

  static const String constructor = 'getManagedBotAccessSettings';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'bot_user_id': botUserId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
