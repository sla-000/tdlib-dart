// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Some data of a community has changed. This update is guaranteed to come
/// before the community identifier is returned to the application
@immutable
class UpdateCommunity extends Update {
  const UpdateCommunity({
    required this.community,
  });

  /// [community] New data about the community
  final Community community;

  static const String constructor = 'updateCommunity';

  static UpdateCommunity? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateCommunity(
      community:
          Community.fromJson(json['community'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'community': community.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpdateCommunity &&
          const DeepCollectionEquality().equals(other.community, community));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(community)]);
}
