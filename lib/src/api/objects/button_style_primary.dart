import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The button has dark blue color
@immutable
class ButtonStylePrimary extends ButtonStyle {
  const ButtonStylePrimary();

  static const String constructor = 'buttonStylePrimary';

  static ButtonStylePrimary? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ButtonStylePrimary();
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
