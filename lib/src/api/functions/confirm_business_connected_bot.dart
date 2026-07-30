import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Confirms an unconfirmed business connection of the current user from
/// another device
/// Returns [Ok]
@immutable
class ConfirmBusinessConnectedBot extends TdFunction {
  const ConfirmBusinessConnectedBot({
    required this.botUserId,
  });

  /// [botUserId] User identifier of the bot
  final int botUserId;

  static const String constructor = 'confirmBusinessConnectedBot';

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
