// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The user can't be a member of a public supergroup
@immutable
class CheckChatUsernameResultPublicGroupsUnavailable
    extends CheckChatUsernameResult {
  const CheckChatUsernameResultPublicGroupsUnavailable();

  static const String constructor =
      'checkChatUsernameResultPublicGroupsUnavailable';

  static CheckChatUsernameResultPublicGroupsUnavailable? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const CheckChatUsernameResultPublicGroupsUnavailable();
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
          other is CheckChatUsernameResultPublicGroupsUnavailable);

  @override
  int get hashCode => runtimeType.hashCode;
}
