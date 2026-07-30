// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Sends Firebase Authentication SMS to the specified phone number. Works
/// only when received a code of the type
/// authenticationCodeTypeFirebaseAndroid or authenticationCodeTypeFirebaseIos
/// Returns [Ok]
@immutable
class SendPhoneNumberFirebaseSms extends TdFunction {
  const SendPhoneNumberFirebaseSms({
    required this.token,
  });

  /// [token] Play Integrity API or SafetyNet Attestation API token for the
  /// Android application, or secret from push notification for the iOS
  /// application
  final String token;

  static const String constructor = 'sendPhoneNumberFirebaseSms';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'token': token,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SendPhoneNumberFirebaseSms &&
          const DeepCollectionEquality().equals(other.token, token));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(token)]);
}
