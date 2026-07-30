import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns a keyboard button prepared by the bot for the user. The button
/// will be of the type keyboardButtonTypeRequestUsers,
/// keyboardButtonTypeRequestChat, or keyboardButtonTypeRequestManagedBot
/// Returns [KeyboardButton]
@immutable
class GetPreparedKeyboardButton extends TdFunction {
  const GetPreparedKeyboardButton({
    required this.botUserId,
    required this.preparedButtonId,
  });

  /// [botUserId] Identifier of the bot that created the button
  final int botUserId;

  /// [preparedButtonId] Identifier of the prepared button
  final String preparedButtonId;

  static const String constructor = 'getPreparedKeyboardButton';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'bot_user_id': botUserId,
        'prepared_button_id': preparedButtonId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
