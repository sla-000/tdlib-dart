// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns only messages in the specified community
@immutable
class SearchMessagesChatTypeFilterCommunity
    extends SearchMessagesChatTypeFilter {
  const SearchMessagesChatTypeFilterCommunity({
    required this.communityId,
  });

  /// [communityId] Identifier of the community to search in
  final int communityId;

  static const String constructor = 'searchMessagesChatTypeFilterCommunity';

  static SearchMessagesChatTypeFilterCommunity? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SearchMessagesChatTypeFilterCommunity(
      communityId: (json['community_id'] as int?) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'community_id': communityId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SearchMessagesChatTypeFilterCommunity &&
          const DeepCollectionEquality()
              .equals(other.communityId, communityId));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(communityId)]);
}
