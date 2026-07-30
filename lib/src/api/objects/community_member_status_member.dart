// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
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
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is CommunityMemberStatusMember);

  @override
  int get hashCode => runtimeType.hashCode;
}
