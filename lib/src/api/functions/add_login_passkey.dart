// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Adds a passkey allowed to be used for the login by the current user and
/// returns the added passkey. Call getPasskeyParameters to get parameters for
/// creating of the passkey
/// Returns [Passkey]
@immutable
class AddLoginPasskey extends TdFunction {
  const AddLoginPasskey({
    required this.clientData,
    required this.attestationObject,
  });

  /// [clientData] JSON-encoded client data
  final String clientData;

  /// [attestationObject] Passkey attestation object
  final String attestationObject;

  static const String constructor = 'addLoginPasskey';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'client_data': clientData,
        'attestation_object': attestationObject,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is AddLoginPasskey &&
          const DeepCollectionEquality().equals(other.clientData, clientData) &&
          const DeepCollectionEquality()
              .equals(other.attestationObject, attestationObject));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(clientData),
        const DeepCollectionEquality().hash(attestationObject)
      ]);
}
