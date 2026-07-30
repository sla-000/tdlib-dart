import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The button is a prepared keyboard button from a Mini App received via
/// getPreparedKeyboardButton
@immutable
class KeyboardButtonSourceWebApp extends KeyboardButtonSource {
  const KeyboardButtonSourceWebApp({
    required this.botUserId,
    required this.preparedButtonId,
  });

  /// [botUserId] Identifier of the bot that created the button
  final int botUserId;

  /// [preparedButtonId] Identifier of the prepared button
  final String preparedButtonId;

  static const String constructor = 'keyboardButtonSourceWebApp';

  static KeyboardButtonSourceWebApp? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return KeyboardButtonSourceWebApp(
      botUserId: json['bot_user_id'] as int,
      preparedButtonId: json['prepared_button_id'] as String,
    );
  }

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
