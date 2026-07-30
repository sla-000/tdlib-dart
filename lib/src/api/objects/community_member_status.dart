import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Provides information about the status of a member in a community
@immutable
abstract class CommunityMemberStatus extends TdObject {
  const CommunityMemberStatus();

  static const String constructor = 'communityMemberStatus';

  /// Inherited by:
  /// [CommunityMemberStatusAdministrator]
  /// [CommunityMemberStatusBanned]
  /// [CommunityMemberStatusCreator]
  /// [CommunityMemberStatusLeft]
  /// [CommunityMemberStatusMember]
  static CommunityMemberStatus? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case CommunityMemberStatusAdministrator.constructor:
        return CommunityMemberStatusAdministrator.fromJson(json);
      case CommunityMemberStatusBanned.constructor:
        return CommunityMemberStatusBanned.fromJson(json);
      case CommunityMemberStatusCreator.constructor:
        return CommunityMemberStatusCreator.fromJson(json);
      case CommunityMemberStatusLeft.constructor:
        return CommunityMemberStatusLeft.fromJson(json);
      case CommunityMemberStatusMember.constructor:
        return CommunityMemberStatusMember.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
