// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The chat active usernames were changed
@immutable
class ChatEventActiveUsernamesChanged extends ChatEventAction {
  const ChatEventActiveUsernamesChanged({
    required this.oldUsernames,
    required this.newUsernames,
  });

  /// [oldUsernames] Previous list of active usernames
  final List<String> oldUsernames;

  /// [newUsernames] New list of active usernames
  final List<String> newUsernames;

  static const String constructor = 'chatEventActiveUsernamesChanged';

  static ChatEventActiveUsernamesChanged? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventActiveUsernamesChanged(
      oldUsernames: List<String>.from(
          ((json['old_usernames'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => item as String)
              .toList()),
      newUsernames: List<String>.from(
          ((json['new_usernames'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => item as String)
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'old_usernames': oldUsernames.map((item) => item).toList(),
        'new_usernames': newUsernames.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ChatEventActiveUsernamesChanged &&
          const DeepCollectionEquality()
              .equals(other.oldUsernames, oldUsernames) &&
          const DeepCollectionEquality()
              .equals(other.newUsernames, newUsernames));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(oldUsernames),
        const DeepCollectionEquality().hash(newUsernames)
      ]);
}
