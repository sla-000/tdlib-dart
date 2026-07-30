// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A simple button, with text that must be sent when the button is pressed
@immutable
class KeyboardButtonTypeText extends KeyboardButtonType {
  const KeyboardButtonTypeText();

  static const String constructor = 'keyboardButtonTypeText';

  static KeyboardButtonTypeText? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const KeyboardButtonTypeText();
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
      (other.runtimeType == runtimeType && other is KeyboardButtonTypeText);

  @override
  int get hashCode => runtimeType.hashCode;
}
