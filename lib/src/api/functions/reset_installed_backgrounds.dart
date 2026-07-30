// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Resets list of installed backgrounds to its default value
/// Returns [Ok]
@immutable
class ResetInstalledBackgrounds extends TdFunction {
  const ResetInstalledBackgrounds();

  static const String constructor = 'resetInstalledBackgrounds';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is ResetInstalledBackgrounds);

  @override
  int get hashCode => runtimeType.hashCode;
}
