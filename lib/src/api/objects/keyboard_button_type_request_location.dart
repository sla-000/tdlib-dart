// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A button that sends the user's location when pressed; available only in
/// private chats
@immutable
class KeyboardButtonTypeRequestLocation extends KeyboardButtonType {
  const KeyboardButtonTypeRequestLocation();

  static const String constructor = 'keyboardButtonTypeRequestLocation';

  static KeyboardButtonTypeRequestLocation? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const KeyboardButtonTypeRequestLocation();
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
          other is KeyboardButtonTypeRequestLocation);

  @override
  int get hashCode => runtimeType.hashCode;
}
