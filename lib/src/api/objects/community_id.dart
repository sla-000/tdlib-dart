// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains identifier of a community
@immutable
class CommunityId extends TdObject {
  const CommunityId({
    required this.id,
  });

  /// [id] Community identifier
  final int id;

  static const String constructor = 'communityId';

  static CommunityId? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return CommunityId(
      id: (json['id'] as int?) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is CommunityId &&
          const DeepCollectionEquality().equals(other.id, id));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(id)]);
}
