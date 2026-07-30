// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A scope covering all private chats
@immutable
class BotCommandScopeAllPrivateChats extends BotCommandScope {
  const BotCommandScopeAllPrivateChats();

  static const String constructor = 'botCommandScopeAllPrivateChats';

  static BotCommandScopeAllPrivateChats? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const BotCommandScopeAllPrivateChats();
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
          other is BotCommandScopeAllPrivateChats);

  @override
  int get hashCode => runtimeType.hashCode;
}
