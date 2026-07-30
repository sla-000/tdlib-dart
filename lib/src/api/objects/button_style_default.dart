import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
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
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
