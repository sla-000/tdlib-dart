// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns information about a supergroup or a channel by its identifier.
/// This is an offline method if the current user is not a bot
/// Returns [Supergroup]
@immutable
class GetSupergroup extends TdFunction {
  const GetSupergroup({
    required this.supergroupId,
  });

  /// [supergroupId] Supergroup or channel identifier
  final int supergroupId;

  static const String constructor = 'getSupergroup';

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
          other is GetSupergroup &&
          const DeepCollectionEquality()
              .equals(other.supergroupId, supergroupId));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(supergroupId)]);
}
