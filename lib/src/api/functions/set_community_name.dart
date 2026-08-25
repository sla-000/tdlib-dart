// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Changes name of the given community; requires can_change_info
/// administrator right in the community
/// Returns [Ok]
@immutable
class SetCommunityName extends TdFunction {
  const SetCommunityName({
    required this.communityId,
    required this.name,
  });

  /// [communityId] Identifier of the community
  final int communityId;

  /// [name] New name of the community
  final String name;

  static const String constructor = 'setCommunityName';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'community_id': communityId,
        'name': name,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SetCommunityName &&
          const DeepCollectionEquality()
              .equals(other.communityId, communityId) &&
          const DeepCollectionEquality().equals(other.name, name));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(communityId),
        const DeepCollectionEquality().hash(name)
      ]);
}
