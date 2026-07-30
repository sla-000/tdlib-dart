// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns autosave settings for the current user
/// Returns [AutosaveSettings]
@immutable
class GetAutosaveSettings extends TdFunction {
  const GetAutosaveSettings();

  static const String constructor = 'getAutosaveSettings';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is GetAutosaveSettings);

  @override
  int get hashCode => runtimeType.hashCode;
}
