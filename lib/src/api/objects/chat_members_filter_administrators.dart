// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns the owner and administrators
@immutable
class ChatMembersFilterAdministrators extends ChatMembersFilter {
  const ChatMembersFilterAdministrators();

  static const String constructor = 'chatMembersFilterAdministrators';

  static ChatMembersFilterAdministrators? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ChatMembersFilterAdministrators();
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
          other is ChatMembersFilterAdministrators);

  @override
  int get hashCode => runtimeType.hashCode;
}
