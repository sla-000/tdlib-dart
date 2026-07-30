// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A rule to restrict all specified users from doing something
@immutable
class UserPrivacySettingRuleRestrictUsers extends UserPrivacySettingRule {
  const UserPrivacySettingRuleRestrictUsers({
    required this.userIds,
  });

  /// [userIds] The user identifiers, total number of users in all rules must
  /// not exceed 1000
  final List<int> userIds;

  static const String constructor = 'userPrivacySettingRuleRestrictUsers';

  static UserPrivacySettingRuleRestrictUsers? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UserPrivacySettingRuleRestrictUsers(
      userIds: List<int>.from(
          ((json['user_ids'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) =>
                  (item is int ? item : int.tryParse(item.toString()) ?? 0))
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'user_ids': userIds.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UserPrivacySettingRuleRestrictUsers &&
          const DeepCollectionEquality().equals(other.userIds, userIds));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(userIds)]);
}
