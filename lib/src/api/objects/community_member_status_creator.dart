import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The user is the owner of the community and has all the administrator
/// privileges
@immutable
class CommunityMemberStatusCreator extends CommunityMemberStatus {
  const CommunityMemberStatusCreator();

  static const String constructor = 'communityMemberStatusCreator';

  static CommunityMemberStatusCreator? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const CommunityMemberStatusCreator();
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
