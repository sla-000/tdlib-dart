// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The username is invalid
@immutable
class CheckChatUsernameResultUsernameInvalid extends CheckChatUsernameResult {
  const CheckChatUsernameResultUsernameInvalid();

  static const String constructor = 'checkChatUsernameResultUsernameInvalid';

  static CheckChatUsernameResultUsernameInvalid? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const CheckChatUsernameResultUsernameInvalid();
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
          other is CheckChatUsernameResultUsernameInvalid);

  @override
  int get hashCode => runtimeType.hashCode;
}
