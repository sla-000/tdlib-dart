// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A rule to allow all users to do something
@immutable
class UserPrivacySettingRuleAllowAll extends UserPrivacySettingRule {
  const UserPrivacySettingRuleAllowAll();

  static const String constructor = 'userPrivacySettingRuleAllowAll';

  static UserPrivacySettingRuleAllowAll? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const UserPrivacySettingRuleAllowAll();
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
          other is UserPrivacySettingRuleAllowAll);

  @override
  int get hashCode => runtimeType.hashCode;
}
