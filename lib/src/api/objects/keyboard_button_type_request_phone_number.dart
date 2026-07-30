// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A button that sends the user's phone number when pressed; available only
/// in private chats
@immutable
class KeyboardButtonTypeRequestPhoneNumber extends KeyboardButtonType {
  const KeyboardButtonTypeRequestPhoneNumber();

  static const String constructor = 'keyboardButtonTypeRequestPhoneNumber';

  static KeyboardButtonTypeRequestPhoneNumber? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const KeyboardButtonTypeRequestPhoneNumber();
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
          other is KeyboardButtonTypeRequestPhoneNumber);

  @override
  int get hashCode => runtimeType.hashCode;
}
