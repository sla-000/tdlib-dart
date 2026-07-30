// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The chat is a private or secret chat with a mutual contact and the user's
/// phone number can be shared with the other user using the method
/// sharePhoneNumber
@immutable
class ChatActionBarSharePhoneNumber extends ChatActionBar {
  const ChatActionBarSharePhoneNumber();

  static const String constructor = 'chatActionBarSharePhoneNumber';

  static ChatActionBarSharePhoneNumber? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ChatActionBarSharePhoneNumber();
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
          other is ChatActionBarSharePhoneNumber);

  @override
  int get hashCode => runtimeType.hashCode;
}
