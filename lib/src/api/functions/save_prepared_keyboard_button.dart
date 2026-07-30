import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
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
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
