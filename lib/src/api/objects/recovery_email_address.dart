// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains information about the current recovery email address
@immutable
class RecoveryEmailAddress extends TdObject {
  const RecoveryEmailAddress({
    required this.recoveryEmailAddress,
  });

  /// [recoveryEmailAddress] Recovery email address
  final String recoveryEmailAddress;

  static const String constructor = 'recoveryEmailAddress';

  static RecoveryEmailAddress? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return RecoveryEmailAddress(
      recoveryEmailAddress: json['recovery_email_address'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'recovery_email_address': recoveryEmailAddress,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is RecoveryEmailAddress &&
          const DeepCollectionEquality()
              .equals(other.recoveryEmailAddress, recoveryEmailAddress));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(recoveryEmailAddress)]);
}
