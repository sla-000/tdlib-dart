// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Removes a passkey from the list of passkeys allowed to be used for the
/// login by the current user
/// Returns [Ok]
@immutable
class RemoveLoginPasskey extends TdFunction {
  const RemoveLoginPasskey({
    required this.passkeyId,
  });

  /// [passkeyId] Unique identifier of the passkey to remove
  final String passkeyId;

  static const String constructor = 'removeLoginPasskey';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'passkey_id': passkeyId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is RemoveLoginPasskey &&
          const DeepCollectionEquality().equals(other.passkeyId, passkeyId));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(passkeyId)]);
}
