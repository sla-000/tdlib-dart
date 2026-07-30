// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns an existing chat corresponding to a known supergroup or channel
/// Returns [Chat]
@immutable
class CreateSupergroupChat extends TdFunction {
  const CreateSupergroupChat({
    required this.supergroupId,
    required this.force,
  });

  /// [supergroupId] Supergroup or channel identifier
  final int supergroupId;

  /// [force] Pass true to create the chat without a network request. In this
  /// case all information about the chat except its type, title and photo can
  /// be incorrect
  final bool force;

  static const String constructor = 'createSupergroupChat';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'supergroup_id': supergroupId,
        'force': force,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is CreateSupergroupChat &&
          const DeepCollectionEquality()
              .equals(other.supergroupId, supergroupId) &&
          const DeepCollectionEquality().equals(other.force, force));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(supergroupId),
        const DeepCollectionEquality().hash(force)
      ]);
}
