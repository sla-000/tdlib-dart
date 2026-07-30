// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A scope covering all group and supergroup chats
@immutable
class BotCommandScopeAllGroupChats extends BotCommandScope {
  const BotCommandScopeAllGroupChats();

  static const String constructor = 'botCommandScopeAllGroupChats';

  static BotCommandScopeAllGroupChats? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const BotCommandScopeAllGroupChats();
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
          other is BotCommandScopeAllGroupChats);

  @override
  int get hashCode => runtimeType.hashCode;
}
