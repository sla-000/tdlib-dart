// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Applies if a user enters new credentials using Apple Pay
@immutable
class InputCredentialsApplePay extends InputCredentials {
  const InputCredentialsApplePay({
    required this.data,
  });

  /// [data] JSON-encoded data with the credential identifier
  final String data;

  static const String constructor = 'inputCredentialsApplePay';

  static InputCredentialsApplePay? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputCredentialsApplePay(
      data: (json['data'] as String?) ?? '',
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'data': data,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is InputCredentialsApplePay &&
          const DeepCollectionEquality().equals(other.data, data));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(data)]);
}
