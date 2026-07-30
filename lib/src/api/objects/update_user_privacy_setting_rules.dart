// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Some privacy setting rules have been changed
@immutable
class UpdateUserPrivacySettingRules extends Update {
  const UpdateUserPrivacySettingRules({
    required this.setting,
    required this.rules,
  });

  /// [setting] The privacy setting
  final UserPrivacySetting setting;

  /// [rules] New privacy rules
  final UserPrivacySettingRules rules;

  static const String constructor = 'updateUserPrivacySettingRules';

  static UpdateUserPrivacySettingRules? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateUserPrivacySettingRules(
      setting: UserPrivacySetting.fromJson(
          json['setting'] as Map<String, dynamic>?)!,
      rules: UserPrivacySettingRules.fromJson(
          json['rules'] as Map<String, dynamic>?)!,
    );
  }

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
          other is UpdateUserPrivacySettingRules &&
          const DeepCollectionEquality().equals(other.setting, setting) &&
          const DeepCollectionEquality().equals(other.rules, rules));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(setting),
        const DeepCollectionEquality().hash(rules)
      ]);
}
