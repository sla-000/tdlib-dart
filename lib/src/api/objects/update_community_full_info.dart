// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Some data in communityFullInfo has been changed
@immutable
class UpdateCommunityFullInfo extends Update {
  const UpdateCommunityFullInfo({
    required this.communityId,
    required this.communityFullInfo,
  });

  /// [communityId] Identifier of the community
  final int communityId;

  /// [communityFullInfo] New full information about the community
  final CommunityFullInfo communityFullInfo;

  static const String constructor = 'updateCommunityFullInfo';

  static UpdateCommunityFullInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateCommunityFullInfo(
      communityId: (json['community_id'] as int?) ?? 0,
      communityFullInfo: CommunityFullInfo.fromJson(
          json['community_full_info'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'community_id': communityId,
        'community_full_info': communityFullInfo.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpdateCommunityFullInfo &&
          const DeepCollectionEquality()
              .equals(other.communityId, communityId) &&
          const DeepCollectionEquality()
              .equals(other.communityFullInfo, communityFullInfo));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(communityId),
        const DeepCollectionEquality().hash(communityFullInfo)
      ]);
}
