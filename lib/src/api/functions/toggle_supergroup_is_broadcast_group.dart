// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Upgrades supergroup to a broadcast group; requires owner privileges in the
/// supergroup
/// Returns [Ok]
@immutable
class ToggleSupergroupIsBroadcastGroup extends TdFunction {
  const ToggleSupergroupIsBroadcastGroup({
    required this.supergroupId,
  });

  /// [supergroupId] Identifier of the supergroup
  final int supergroupId;

  static const String constructor = 'toggleSupergroupIsBroadcastGroup';

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
          other is ToggleSupergroupIsBroadcastGroup &&
          const DeepCollectionEquality()
              .equals(other.supergroupId, supergroupId));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(supergroupId)]);
}
