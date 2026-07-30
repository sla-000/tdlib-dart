// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The button has default style
@immutable
class ButtonStyleDefault extends ButtonStyle {
  const ButtonStyleDefault();

  static const String constructor = 'buttonStyleDefault';

  static ButtonStyleDefault? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ButtonStyleDefault();
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
      (other.runtimeType == runtimeType && other is ButtonStyleDefault);

  @override
  int get hashCode => runtimeType.hashCode;
}
