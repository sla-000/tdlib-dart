// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns auto-download settings presets for the current user
/// Returns [AutoDownloadSettingsPresets]
@immutable
class GetAutoDownloadSettingsPresets extends TdFunction {
  const GetAutoDownloadSettingsPresets();

  static const String constructor = 'getAutoDownloadSettingsPresets';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetAutoDownloadSettingsPresets);

  @override
  int get hashCode => runtimeType.hashCode;
}
