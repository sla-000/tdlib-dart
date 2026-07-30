// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Sets auto-download settings
/// Returns [Ok]
@immutable
class SetAutoDownloadSettings extends TdFunction {
  const SetAutoDownloadSettings({
    required this.settings,
    required this.type,
  });

  /// [settings] New user auto-download settings
  final AutoDownloadSettings settings;

  /// [type] Type of the network for which the new settings are relevant
  final NetworkType type;

  static const String constructor = 'setAutoDownloadSettings';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'settings': settings.toJson(),
        'type': type.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SetAutoDownloadSettings &&
          const DeepCollectionEquality().equals(other.settings, settings) &&
          const DeepCollectionEquality().equals(other.type, type));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(settings),
        const DeepCollectionEquality().hash(type)
      ]);
}
