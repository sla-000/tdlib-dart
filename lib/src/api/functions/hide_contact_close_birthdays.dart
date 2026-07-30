// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Hides the list of contacts that have close birthdays for 24 hours
/// Returns [Ok]
@immutable
class HideContactCloseBirthdays extends TdFunction {
  const HideContactCloseBirthdays();

  static const String constructor = 'hideContactCloseBirthdays';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is HideContactCloseBirthdays);

  @override
  int get hashCode => runtimeType.hashCode;
}
