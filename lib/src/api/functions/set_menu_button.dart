// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Sets menu button for the given user or for all users; for bots only
/// Returns [Ok]
@immutable
class SetMenuButton extends TdFunction {
  const SetMenuButton({
    required this.userId,
    required this.menuButton,
  });

  /// [userId] Identifier of the user or 0 to set menu button for all users
  final int userId;

  /// [menuButton] New menu button
  final BotMenuButton menuButton;

  static const String constructor = 'setMenuButton';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'user_id': userId,
        'menu_button': menuButton.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SetMenuButton &&
          const DeepCollectionEquality().equals(other.userId, userId) &&
          const DeepCollectionEquality().equals(other.menuButton, menuButton));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(userId),
        const DeepCollectionEquality().hash(menuButton)
      ]);
}
