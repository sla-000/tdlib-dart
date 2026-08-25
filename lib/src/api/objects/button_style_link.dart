// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The button must be shown as a link. The style is allowed only for callback
/// buttons in inlineButton
@immutable
class ButtonStyleLink extends ButtonStyle {
  const ButtonStyleLink();

  static const String constructor = 'buttonStyleLink';

  static ButtonStyleLink? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ButtonStyleLink();
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
      (other.runtimeType == runtimeType && other is ButtonStyleLink);

  @override
  int get hashCode => runtimeType.hashCode;
}
