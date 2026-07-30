// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A scope covering all group and supergroup chat administrators
@immutable
class BotCommandScopeAllChatAdministrators extends BotCommandScope {
  const BotCommandScopeAllChatAdministrators();

  static const String constructor = 'botCommandScopeAllChatAdministrators';

  static BotCommandScopeAllChatAdministrators? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const BotCommandScopeAllChatAdministrators();
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
          other is BotCommandScopeAllChatAdministrators);

  @override
  int get hashCode => runtimeType.hashCode;
}
