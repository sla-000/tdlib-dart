// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The user has too many chats with username, one of them must be made
/// private first
@immutable
class CheckChatUsernameResultPublicChatsTooMany
    extends CheckChatUsernameResult {
  const CheckChatUsernameResultPublicChatsTooMany();

  static const String constructor = 'checkChatUsernameResultPublicChatsTooMany';

  static CheckChatUsernameResultPublicChatsTooMany? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const CheckChatUsernameResultPublicChatsTooMany();
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
          other is CheckChatUsernameResultPublicChatsTooMany);

  @override
  int get hashCode => runtimeType.hashCode;
}
