// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Disables all active non-editable usernames of a supergroup or channel,
/// requires owner privileges in the supergroup or channel
/// Returns [Ok]
@immutable
class DisableAllSupergroupUsernames extends TdFunction {
  const DisableAllSupergroupUsernames({
    required this.supergroupId,
  });

  /// [supergroupId] Identifier of the supergroup or channel
  final int supergroupId;

  static const String constructor = 'disableAllSupergroupUsernames';

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
          other is DisableAllSupergroupUsernames &&
          const DeepCollectionEquality()
              .equals(other.supergroupId, supergroupId));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(supergroupId)]);
}
