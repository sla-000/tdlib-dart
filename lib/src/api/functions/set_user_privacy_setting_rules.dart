// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Changes user privacy settings
/// Returns [Ok]
@immutable
class SetUserPrivacySettingRules extends TdFunction {
  const SetUserPrivacySettingRules({
    required this.setting,
    required this.rules,
  });

  /// [setting] The privacy setting
  final UserPrivacySetting setting;

  /// [rules] The new privacy rules
  final UserPrivacySettingRules rules;

  static const String constructor = 'setUserPrivacySettingRules';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'setting': setting.toJson(),
        'rules': rules.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SetUserPrivacySettingRules &&
          const DeepCollectionEquality().equals(other.setting, setting) &&
          const DeepCollectionEquality().equals(other.rules, rules));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(setting),
        const DeepCollectionEquality().hash(rules)
      ]);
}
