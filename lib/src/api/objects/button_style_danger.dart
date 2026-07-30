// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The button has red color
@immutable
class ButtonStyleDanger extends ButtonStyle {
  const ButtonStyleDanger();

  static const String constructor = 'buttonStyleDanger';

  static ButtonStyleDanger? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ButtonStyleDanger();
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
      (other.runtimeType == runtimeType && other is ButtonStyleDanger);

  @override
  int get hashCode => runtimeType.hashCode;
}
