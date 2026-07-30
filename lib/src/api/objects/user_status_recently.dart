// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The user was online recently
@immutable
class UserStatusRecently extends UserStatus {
  const UserStatusRecently({
    required this.byMyPrivacySettings,
  });

  /// [byMyPrivacySettings] Exact user's status is hidden because the current
  /// user enabled userPrivacySettingShowStatus privacy setting for the user and
  /// has no Telegram Premium
  final bool byMyPrivacySettings;

  static const String constructor = 'userStatusRecently';

  static UserStatusRecently? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UserStatusRecently(
      byMyPrivacySettings: (json['by_my_privacy_settings'] as bool?) ?? false,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'by_my_privacy_settings': byMyPrivacySettings,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UserStatusRecently &&
          const DeepCollectionEquality()
              .equals(other.byMyPrivacySettings, byMyPrivacySettings));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(byMyPrivacySettings)]);
}
