// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns the current privacy settings
/// Returns [UserPrivacySettingRules]
@immutable
class GetUserPrivacySettingRules extends TdFunction {
  const GetUserPrivacySettingRules({
    required this.setting,
  });

  /// [setting] The privacy setting
  final UserPrivacySetting setting;

  static const String constructor = 'getUserPrivacySettingRules';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'setting': setting.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetUserPrivacySettingRules &&
          const DeepCollectionEquality().equals(other.setting, setting));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(setting)]);
}
