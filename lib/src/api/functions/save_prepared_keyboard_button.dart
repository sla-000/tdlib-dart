// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Saves a keyboard button to be shown to the given user; for bots only
/// Returns [Text]
@immutable
class SavePreparedKeyboardButton extends TdFunction {
  const SavePreparedKeyboardButton({
    required this.userId,
    required this.button,
  });

  /// [userId] Identifier of the user
  final int userId;

  /// [button] The button; must be of the type keyboardButtonTypeRequestUsers,
  /// keyboardButtonTypeRequestChat, or keyboardButtonTypeRequestManagedBot
  final KeyboardButton button;

  static const String constructor = 'savePreparedKeyboardButton';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'user_id': userId,
        'button': button.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SavePreparedKeyboardButton &&
          const DeepCollectionEquality().equals(other.userId, userId) &&
          const DeepCollectionEquality().equals(other.button, button));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(userId),
        const DeepCollectionEquality().hash(button)
      ]);
}
