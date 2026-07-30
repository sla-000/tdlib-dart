// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Sets autosave settings for the given scope. The method is guaranteed to
/// work only after at least one call to getAutosaveSettings
/// Returns [Ok]
@immutable
class SetAutosaveSettings extends TdFunction {
  const SetAutosaveSettings({
    required this.scope,
    this.settings,
  });

  /// [scope] Autosave settings scope
  final AutosaveSettingsScope scope;

  /// [settings] New autosave settings for the scope; pass null to set autosave
  /// settings to default
  final ScopeAutosaveSettings? settings;

  static const String constructor = 'setAutosaveSettings';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'scope': scope.toJson(),
        'settings': settings?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SetAutosaveSettings &&
          const DeepCollectionEquality().equals(other.scope, scope) &&
          const DeepCollectionEquality().equals(other.settings, settings));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(scope),
        const DeepCollectionEquality().hash(settings)
      ]);
}
