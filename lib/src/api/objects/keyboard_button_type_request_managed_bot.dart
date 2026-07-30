// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A button that requests creation of a managed bot by the current user;
/// available only in private chats. Use the method createBot to complete the
/// request
@immutable
class KeyboardButtonTypeRequestManagedBot extends KeyboardButtonType {
  const KeyboardButtonTypeRequestManagedBot({
    required this.id,
    required this.suggestedName,
    required this.suggestedUsername,
  });

  /// [id] Unique button identifier
  final int id;

  /// [suggestedName] Suggested name for the bot; may be empty if not specified
  final String suggestedName;

  /// [suggestedUsername] Suggested username for the bot; may be empty if not
  /// specified
  final String suggestedUsername;

  static const String constructor = 'keyboardButtonTypeRequestManagedBot';

  static KeyboardButtonTypeRequestManagedBot? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return KeyboardButtonTypeRequestManagedBot(
      id: json['id'] as int,
      suggestedName: json['suggested_name'] as String,
      suggestedUsername: json['suggested_username'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'suggested_name': suggestedName,
        'suggested_username': suggestedUsername,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is KeyboardButtonTypeRequestManagedBot &&
          const DeepCollectionEquality().equals(other.id, id) &&
          const DeepCollectionEquality()
              .equals(other.suggestedName, suggestedName) &&
          const DeepCollectionEquality()
              .equals(other.suggestedUsername, suggestedUsername));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(suggestedName),
        const DeepCollectionEquality().hash(suggestedUsername)
      ]);
}
