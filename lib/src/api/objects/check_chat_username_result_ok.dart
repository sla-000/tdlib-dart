// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The username can be set
@immutable
class CheckChatUsernameResultOk extends CheckChatUsernameResult {
  const CheckChatUsernameResultOk();

  static const String constructor = 'checkChatUsernameResultOk';

  static CheckChatUsernameResultOk? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const CheckChatUsernameResultOk();
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
      (other.runtimeType == runtimeType && other is CheckChatUsernameResultOk);

  @override
  int get hashCode => runtimeType.hashCode;
}
