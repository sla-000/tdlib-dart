import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The user is a member of the community, without any additional privileges
/// or restrictions
@immutable
class CommunityMemberStatusMember extends CommunityMemberStatus {
  const CommunityMemberStatusMember();

  static const String constructor = 'communityMemberStatusMember';

  static CommunityMemberStatusMember? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const CommunityMemberStatusMember();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
