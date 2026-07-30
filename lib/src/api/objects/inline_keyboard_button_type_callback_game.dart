// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A button with a game that sends a callback query to a bot. This button
/// must be in the first column and row of the keyboard and can be attached
/// only to a message with content of the type messageGame
@immutable
class InlineKeyboardButtonTypeCallbackGame extends InlineKeyboardButtonType {
  const InlineKeyboardButtonTypeCallbackGame();

  static const String constructor = 'inlineKeyboardButtonTypeCallbackGame';

  static InlineKeyboardButtonTypeCallbackGame? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const InlineKeyboardButtonTypeCallbackGame();
  }

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
          other is InlineKeyboardButtonTypeCallbackGame);

  @override
  int get hashCode => runtimeType.hashCode;
}
