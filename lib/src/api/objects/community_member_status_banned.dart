// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
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
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is CommunityMemberStatusBanned);

  @override
  int get hashCode => runtimeType.hashCode;
}
