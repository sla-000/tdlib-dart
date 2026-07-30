// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A URL linking to a public supergroup or channel
@immutable
class TMeUrlTypeSupergroup extends TMeUrlType {
  const TMeUrlTypeSupergroup({
    required this.supergroupId,
  });

  /// [supergroupId] Identifier of the supergroup or channel
  final int supergroupId;

  static const String constructor = 'tMeUrlTypeSupergroup';

  static TMeUrlTypeSupergroup? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TMeUrlTypeSupergroup(
      supergroupId: (json['supergroup_id'] as int?) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'supergroup_id': supergroupId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is TMeUrlTypeSupergroup &&
          const DeepCollectionEquality()
              .equals(other.supergroupId, supergroupId));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(supergroupId)]);
}
