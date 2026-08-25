// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns full information about a community. The data will be sent through
/// update.
/// Returns [Ok]
@immutable
class LoadCommunityFullInfo extends TdFunction {
  const LoadCommunityFullInfo({
    required this.communityId,
  });

  /// [communityId] Community identifier
  final int communityId;

  static const String constructor = 'loadCommunityFullInfo';

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
          other is LoadCommunityFullInfo &&
          const DeepCollectionEquality()
              .equals(other.communityId, communityId));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(communityId)]);
}
