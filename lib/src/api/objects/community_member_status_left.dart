// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The user or the chat is not a community member
@immutable
class CommunityMemberStatusLeft extends CommunityMemberStatus {
  const CommunityMemberStatusLeft();

  static const String constructor = 'communityMemberStatusLeft';

  static CommunityMemberStatusLeft? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const CommunityMemberStatusLeft();
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
      (other.runtimeType == runtimeType && other is CommunityMemberStatusLeft);

  @override
  int get hashCode => runtimeType.hashCode;
}
