import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The user or the chat was banned in the community; implies ban in all chats
/// in the community
@immutable
class CommunityMemberStatusBanned extends CommunityMemberStatus {
  const CommunityMemberStatusBanned();

  static const String constructor = 'communityMemberStatusBanned';

  static CommunityMemberStatusBanned? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const CommunityMemberStatusBanned();
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
