// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Changes the editable username of a supergroup or channel, requires owner
/// privileges in the supergroup or channel
/// Returns [Ok]
@immutable
class SetSupergroupUsername extends TdFunction {
  const SetSupergroupUsername({
    required this.supergroupId,
    required this.username,
  });

  /// [supergroupId] Identifier of the supergroup or channel
  final int supergroupId;

  /// [username] New value of the username. Use an empty string to remove the
  /// username. The username can't be completely removed if there is another
  /// active or disabled username
  final String username;

  static const String constructor = 'setSupergroupUsername';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'supergroup_id': supergroupId,
        'username': username,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SetSupergroupUsername &&
          const DeepCollectionEquality()
              .equals(other.supergroupId, supergroupId) &&
          const DeepCollectionEquality().equals(other.username, username));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(supergroupId),
        const DeepCollectionEquality().hash(username)
      ]);
}
