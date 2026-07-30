// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A rule to allow all bots to do something
@immutable
class UserPrivacySettingRuleAllowBots extends UserPrivacySettingRule {
  const UserPrivacySettingRuleAllowBots();

  static const String constructor = 'userPrivacySettingRuleAllowBots';

  static UserPrivacySettingRuleAllowBots? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const UserPrivacySettingRuleAllowBots();
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
      (other.runtimeType == runtimeType &&
          other is UserPrivacySettingRuleAllowBots);

  @override
  int get hashCode => runtimeType.hashCode;
}
